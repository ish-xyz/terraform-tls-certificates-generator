output "key" {
   value = tls_private_key.cert.private_key_pem
}

output "cert" {
   value = tls_locally_signed_cert.local.cert_pem
}

output "ca_key" {
   value = tls_private_key.ca.private_key_pem
}

output "ca_cert" {
   value = tls_self_signed_cert.ca.cert_pem
}