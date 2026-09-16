project_id = "idp-poc-495014"

# bucket (modules: gcs)
gcs = {
  location           = "EU"
  storage_class      = "STANDARD"
  versioning_enabled = false
  retention_policy = [
    {
      is_locked        = true
      retention_period = 10
    }
  ]
}

region              = "europe-west3"
name                = "test-app"
routing_mode        = "REGIONAL"
create_nat          = true
ingress_ssh_via_IAP = true

# ERRORS: the following overrides have no corresponding variable
# in their building block's modules and were skipped:
# ERROR: override 'key_rotation_period_days = 90' for building block 'keys' (modules: kms) has no corresponding variable.
# ERROR: override 'auto_create_subnetworks = false' for building block 'network' (modules: network, firewall, dns, external_global_address, external_global_loadbalancer) has no corresponding variable.
