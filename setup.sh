#!/bin/bash

# Set environment variable in /root/.bash_profile
echo 'export GITHUB_USERNAME="Findefra"' >> /root/.bash_profile

# Write code to config.hcl
cat << EOF > config.hcl
# Sample config.hcl file
variable "github_username" {
  type    = string
  default = "$GITHUB_USERNAME"
}

# configurations here...
cluster_addr  = "https://<HOSTNAME>:8201"
api_addr      = "https://<HOSTNAME>:8200"
disable_mlock = true


EOF

echo "Setup completed successfully."
