
#####Findley Defranc-Enablement_Interview####
######Setup_Sample_File_#####


#!/bin/bash

# Set environment variable in /root/.bash_profile
echo 'export GITHUB_USERNAME="Findefra"' >> /root/.bash_profile

# Replace <HOSTNAME> in config.hcl
sed -i 's/<HOSTNAME>/vault-server.hashicorp.com/g' config.hcl

# Write code to config.hcl
cat << EOF > config.hcl
# Sample config.hcl file
variable "github_username" {
  type    = string
  default = "$GITHUB_USERNAME"
}

# Add more configurations here...
cluster_addr  = "https://<HOSTNAME>:8201"
api_addr      = "https://<HOSTNAME>:8200"
disable_mlock = true

    Replaces <HOSTNAME> value vault-server.hashicorp.com in config.hcl
	
EOF

echo "Setup completed successfully."
