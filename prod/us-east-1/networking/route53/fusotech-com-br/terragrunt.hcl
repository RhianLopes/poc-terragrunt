include {
  path = find_in_parent_folders()
}

terraform {
    source  = "tfr:///terraform-aws-modules/route53/aws//modules/zones?version=2.11.1"
}

inputs = {
    zones = {
        "fusotech.com.br" = {
            comment = "fusotech.com.br (production)"
            tags = {
                env = "production"
            }
        }
  }

  tags = {
    ManagedBy = "Terraform"
  }
}