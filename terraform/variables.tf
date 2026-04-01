variable "project_id" {
  type        = string
  description = "GCP project ID to manage resources in."
  default     = "nyc-city-bike-491516"
}

variable "region" {
  type        = string
  description = "Default region for regional resources."
  default     = "us-central1"
}

variable "gcs_bucket_name" {
  type        = string
  description = "Name of the GCS bucket to create."
  default     = "nyc-city-bike-data-bucket"
}

variable "location" {
  type        = string
  description = "Location of the GCS bucket."
  default     = "US"
}

variable "bq_dataset_name" {
  type        = string
  description = "Name of the BigQuery dataset to create."
  default     = "nyc_city_bike_data"
}