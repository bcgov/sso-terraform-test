terraform {
  required_version = ">= 0.15.5"

  backend "s3" {
    bucket         = "xgr00q-test-keycloak"
    key            = "keycloak/gold"
    dynamodb_table = "xgr00q-test-state-locking"
    region         = "ca-central-1"
  }

  required_providers {
    keycloak = {
      source  = "mrparkers/keycloak"
      version = "4.4.0"
    }
  }
}
