resource "google_compute_network" "vpc_network" {
  name = "vpc-network"
}

resource "google_compute_instance" "vm" {
  name         = "vm-${count.index}"
  machine_type = "n2-standard-2"
  zone         = "europe-west1-b"
  count = 2

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.id

    access_config {
      // Ephemeral public IP
    }
  }
}

resource "google_sql_database_instance" "database" {
  name             = "database"
  database_version = "POSTGRES_15"
  region           = "europe-west1"

  depends_on = [ google_compute_network.vpc_network ]

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      private_network = google_compute_network.vpc_network.id
    }
  }
}

resource "google_dns_record_set" "dns" {
  name = "dns.${google_dns_managed_zone.prod.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.prod.name

  rrdatas = [google_compute_instance.vm[*].network_interface[0].access_config[0].nat_ip]
}

resource "google_dns_managed_zone" "prod" {
  name     = "prod-zone"
  dns_name = "prod.mydomain.com."
}

