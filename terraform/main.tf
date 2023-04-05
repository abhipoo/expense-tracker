terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  credentials = file(var.gcp_auth_file)
}

resource "google_storage_bucket" "expense-tracker-bucket" {
  project  = "adept-turbine-382610"
  name     = "expense-tracker-files"
  location = "ASIA-SOUTH1"
}
