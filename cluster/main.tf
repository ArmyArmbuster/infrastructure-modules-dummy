resource "google_compute_instance" "gci" {
  machine_type = "e2-micro"
  name         = var.name

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
  }
}
