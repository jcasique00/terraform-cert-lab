# terraform-cert-lab

Hands-on labs for studying towards the HashiCorp Terraform Associate (003/004) certification.

## Purpose

This is a personal training repo, not production infrastructure. Each lab is a
self-contained Terraform configuration used to practice each one of the objectives on the exam - providers, state, variables, modules, provisioners, workspaces, etc.
The structure of this will evolve organically as labs are added.

## Targets

- **AWS free tier** - for labs following materials from Pluralsight.
- **Proxmox** ([bpg/proxmox](https://registry.terraform.io/providers/bpg/proxmox/latest)) reusing my homelab hypervisor for hands-on practice.
- **HashiCorp HCP** - As part of one of the exam's objectives.

## Prerequisites

- [Terraform CLI](https://developer.hashicorp.com/terraform/install)
- Visual Studio Code as the main IDE, with the appropriate Terraform plugins
- AWS credentials configured (`aws configure` or env vars) for AWS-based labs
- Proxmox API token for Proxmox-based labs
- HashiCorp account

## Basic Terraform workflow when running a lab

```bash
cd <lab-directory>
terraform init
terraform plan
terraform apply
```

Always review the plan output before applying. Destroy resources after each
lab to avoid unnecessary cost/resource usage:

```bash
terraform destroy
```
