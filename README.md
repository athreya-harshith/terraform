Go through in this order
- file-separation
- variables
- tf-vars

# Terraform Validate
# Terraform Refresh
 - if something has been changed manually over the deployed infra and the current state file in the code is out of sync, this would bring that manually changed changes into the state file. However if the apply command is executed then the changes present in the actuall tf file ( infra definition ) will be applied