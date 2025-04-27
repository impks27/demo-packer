# demo-packer

## What is Packer?
Packer is a tool by HashiCorp that automates the creation of machine images.
(Machine images = AMIs on AWS, VM templates, Docker images, etc.)

Instead of clicking manually to install stuff on a VM, Packer builds a ready-to-go machine image from a configuration file (JSON or HCL format).

### Initialize (only first time)
packer init .

### Validate the file
packer validate nginx-ami.pkr.hcl

### Build the AMI
packer build nginx-ami.pkr.hcl
