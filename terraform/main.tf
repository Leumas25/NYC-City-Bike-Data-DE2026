terraform {
  required_providers {
    google  = { 
      source = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  credentials = file("nyc-city-bike-491516-fd935bb6b12e.json")
  project     = "nyc-city-bike-491516"
  region      = "us-central1"

} 

resource "google_storage_bucket" "nyc_city_bike_data_bucket" {
  name          = var.gcs_bucket_name
  location      = var.location
  force_destroy = true


  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_bigquery_dataset" "nyc_city_bike_data_dataset" {
  dataset_id = var.bq_dataset_name
  location   = var.location
}