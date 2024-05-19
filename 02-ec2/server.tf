resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "asia-south1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image  = "CentOS Stream 8"
      labels = {
        my_label = "value"
      }
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}