resource "google_project_service" "compute" {
  service = "compute.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }
}
