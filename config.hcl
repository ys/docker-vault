backend "s3" {
  bucket = "ys-vault"
}

listener "tcp" {
  tls_cert_file = "/certs/cert.crt"
  tls_key_file = "/certs/key.key"
}
