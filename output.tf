output "simple" {
  value       = "Hello world!"
  description = "Just output."
}

output "ip" {
  value = google_compute_instance.default.network_interface[0].access_config[0].nat_ip
}

output "multiline" {
  value = <<EOF
  hello
  world
EOF
}

output "network_interface" {
  value       = google_compute_instance.default.network_interface
  description = "Everything from google_compute_instance.default."
}

output "some_sensitive_value" {
  value     = google_compute_instance.default.metadata_fingerprint
  sensitive = true
}
