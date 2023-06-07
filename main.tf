module "aws" {
  source = "kozraf/vm/cloud//modules/aws"
  environment = {
    name             = "AWS"
    background_color = "orange"
  }
}

module "azure" {
  source = "kozraf/vm/cloud//modules/azure"
  environment = {
    name             = "Azure"
    background_color = "blue"
  }
}

module "loadbalancer" {
  source = "kozraf/vm/cloud//modules/loadbalancer"
  addresses = [
    module.aws.network_address,
    module.azure.network_address,
  ]
}