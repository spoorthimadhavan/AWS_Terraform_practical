
# Terraform Workflow

This document outlines the basic workflow for managing infrastructure with Terraform.

## Initialization

The `terraform init` command is used to initialize a working directory containing Terraform configuration files.

```bash
terraform init -reconfigure
```

## Validate
```bash
terraform validate
```

## Format
```bash
terraform fmt
```

## Plan
```bash
terraform plan -out=plan
```

## Apply
```bash
terraform apply plan
```

## Destroy
```bash
terraform destroy
```
