TD about Terraform

After all steps with google provider, we have, with terraform plan:

Terraform will perform the following actions:

  # google_compute_instance.vm[0] will be created
  + resource "google_compute_instance" "vm" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + creation_timestamp   = (known after apply)
      + current_status       = (known after apply)
      + deletion_policy      = "DELETE"
      + deletion_protection  = false
      + effective_labels     = {
          + "goog-terraform-provisioned" = "true"
        }
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "n2-standard-2"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "vm"
      + project              = "td-terraform"
      + self_link            = (known after apply)
      + tags_fingerprint     = (known after apply)
      + terraform_labels     = {
          + "goog-terraform-provisioned" = "true"
        }
      + zone                 = "europe-west1-b"

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + guest_os_features          = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + architecture           = (known after apply)
              + image                  = "debian-cloud/debian-11"
              + labels                 = {
                  + "my_label" = "value"
                }
              + provisioned_iops       = (known after apply)
              + provisioned_throughput = (known after apply)
              + resource_policies      = (known after apply)
              + size                   = (known after apply)
              + snapshot               = (known after apply)
              + type                   = (known after apply)
            }
        }

      + confidential_instance_config (known after apply)

      + guest_accelerator (known after apply)

      + network_interface {
          + igmp_query                  = (known after apply)
          + internal_ipv6_prefix_length = (known after apply)
          + ipv6_access_type            = (known after apply)
          + ipv6_address                = (known after apply)
          + name                        = (known after apply)
          + network                     = (known after apply)
          + network_attachment          = (known after apply)
          + network_ip                  = (known after apply)
          + parent_nic_name             = (known after apply)
          + stack_type                  = (known after apply)
          + subnetwork                  = (known after apply)
          + subnetwork_project          = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }

      + reservation_affinity (known after apply)

      + scheduling (known after apply)
    }

  # google_compute_instance.vm[1] will be created
  + resource "google_compute_instance" "vm" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + creation_timestamp   = (known after apply)
      + current_status       = (known after apply)
      + deletion_policy      = "DELETE"
      + deletion_protection  = false
      + effective_labels     = {
          + "goog-terraform-provisioned" = "true"
        }
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "n2-standard-2"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "vm"
      + project              = "td-terraform"
      + self_link            = (known after apply)
      + tags_fingerprint     = (known after apply)
      + terraform_labels     = {
          + "goog-terraform-provisioned" = "true"
        }
      + zone                 = "europe-west1-b"

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + guest_os_features          = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + architecture           = (known after apply)
              + image                  = "debian-cloud/debian-11"
              + labels                 = {
                  + "my_label" = "value"
                }
              + provisioned_iops       = (known after apply)
              + provisioned_throughput = (known after apply)
              + resource_policies      = (known after apply)
              + size                   = (known after apply)
              + snapshot               = (known after apply)
              + type                   = (known after apply)
            }
        }

      + confidential_instance_config (known after apply)

      + guest_accelerator (known after apply)

      + network_interface {
          + igmp_query                  = (known after apply)
          + internal_ipv6_prefix_length = (known after apply)
          + ipv6_access_type            = (known after apply)
          + ipv6_address                = (known after apply)
          + name                        = (known after apply)
          + network                     = (known after apply)
          + network_attachment          = (known after apply)
          + network_ip                  = (known after apply)
          + parent_nic_name             = (known after apply)
          + stack_type                  = (known after apply)
          + subnetwork                  = (known after apply)
          + subnetwork_project          = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }

      + reservation_affinity (known after apply)

      + scheduling (known after apply)
    }

  # google_compute_network.vpc_network will be created
  + resource "google_compute_network" "vpc_network" {
      + auto_create_subnetworks                   = true
      + bgp_always_compare_med                    = (known after apply)
      + bgp_best_path_selection_mode              = (known after apply)
      + bgp_inter_region_cost                     = (known after apply)
      + delete_bgp_always_compare_med             = false
      + delete_default_routes_on_create           = false
      + deletion_policy                           = "DELETE"
      + gateway_ipv4                              = (known after apply)
      + id                                        = (known after apply)
      + internal_ipv6_range                       = (known after apply)
      + mtu                                       = (known after apply)
      + name                                      = "vpc-network"
      + network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
      + network_id                                = (known after apply)
      + numeric_id                                = (known after apply)
      + project                                   = "td-terraform"
      + routing_mode                              = (known after apply)
      + self_link                                 = (known after apply)
    }

  # google_dns_managed_zone.prod will be created
  + resource "google_dns_managed_zone" "prod" {
      + creation_time    = (known after apply)
      + deletion_policy  = "DELETE"
      + description      = "Managed by Terraform"
      + dns_name         = "prod.mydomain.com."
      + effective_labels = {
          + "goog-terraform-provisioned" = "true"
        }
      + force_destroy    = false
      + id               = (known after apply)
      + managed_zone_id  = (known after apply)
      + name             = "prod-zone"
      + name_servers     = (known after apply)
      + project          = "td-terraform"
      + terraform_labels = {
          + "goog-terraform-provisioned" = "true"
        }
      + visibility       = "public"

      + cloud_logging_config (known after apply)

      + dnssec_config (known after apply)
    }

  # google_dns_record_set.dns will be created
  + resource "google_dns_record_set" "dns" {
      + deletion_policy = "DELETE"
      + id              = (known after apply)
      + managed_zone    = "prod-zone"
      + name            = "dns.prod.mydomain.com."
      + project         = "td-terraform"
      + rrdatas         = (known after apply)
      + ttl             = 300
      + type            = "A"
    }

  # google_sql_database_instance.database will be created
  + resource "google_sql_database_instance" "database" {
      + available_maintenance_versions       = (known after apply)
      + connection_name                      = (known after apply)
      + database_version                     = "POSTGRES_15"
      + deletion_policy                      = "DELETE"
      + deletion_protection                  = true
      + dns_name                             = (known after apply)
      + dns_names                            = (known after apply)
      + encryption_confidential_mode         = (known after apply)
      + encryption_key_name                  = (known after apply)
      + enforce_new_sql_network_architecture = (known after apply)
      + first_ip_address                     = (known after apply)
      + id                                   = (known after apply)
      + instance_type                        = (known after apply)
      + ip_address                           = (known after apply)
      + maintenance_version                  = (known after apply)
      + master_instance_name                 = (known after apply)
      + name                                 = "database"
      + node_count                           = (known after apply)
      + private_ip_address                   = (known after apply)
      + project                              = "td-terraform"
      + psc_service_attachment_link          = (known after apply)
      + public_ip_address                    = (known after apply)
      + region                               = "europe-west1"
      + replica_names                        = (known after apply)
      + root_password_wo                     = (write-only attribute)
      + self_link                            = (known after apply)
      + server_ca_cert                       = (sensitive value)
      + service_account_email_address        = (known after apply)

      + replica_configuration (known after apply)

      + replication_cluster (known after apply)

      + settings {
          + activation_policy                = "ALWAYS"
          + availability_type                = "ZONAL"
          + connector_enforcement            = (known after apply)
          + data_api_access                  = (known after apply)
          + data_disk_provisioned_iops       = (known after apply)
          + data_disk_provisioned_throughput = (known after apply)
          + disk_autoresize                  = true
          + disk_autoresize_limit            = 0
          + disk_size                        = (known after apply)
          + disk_type                        = (known after apply)
          + edition                          = (known after apply)
          + effective_availability_type      = (known after apply)
          + pricing_plan                     = "PER_USE"
          + replication_lag_max_seconds      = (known after apply)
          + tier                             = "db-f1-micro"
          + user_labels                      = (known after apply)
          + version                          = (known after apply)

          + backup_configuration (known after apply)

          + connection_pool_config (known after apply)

          + data_cache_config (known after apply)

          + insights_config (known after apply)

          + ip_configuration {
              + ipv4_enabled    = true
              + private_network = (known after apply)
              + server_ca_mode  = (known after apply)
              + ssl_mode        = (known after apply)
            }

          + location_preference (known after apply)

          + read_pool_auto_scale_config (known after apply)
        }
    }

Plan: 6 to add, 0 to change, 0 to destroy.