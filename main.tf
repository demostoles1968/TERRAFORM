provider "google-beta" {
  region = "us-central1"
  zone = "us-centra1-a"
}
provider "google" {
  region = "us-central1"
  zone = "us-centra1-a"
}
resource "google_compute_instance" "default" {
  name         = "instance-2"
  machine_type = "e2-standard-2"
  zone         = "us-central1-a"
  project = "atos-ib-ansible-lab"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20201216"
    }
  }
  network_interface {
    network = "default"
  }
}
