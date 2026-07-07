terraform {
  required_version = ">= 1.5.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "lab_info" {
  filename = "${path.module}/../terraform-output/lab-info.txt"

  content = <<EOT
Junior DevOps Lab
Managed with Terraform local provider.
EOT
}
