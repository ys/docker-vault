backend "s3" {
  bucket = "ys-vault"
}

listener "tcp" {
  address = "127.0.0.1:8080"
  tls_cert_file = "/certs/cert.crt"
  tls_key_file = "/certs/key.key"
}
