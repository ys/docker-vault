backend "s3" {
  bucket = "ys-vault"
}

disable_mlock = true

listener "tcp" {
  address = "127.0.0.1:8080"
  tls_cert_file = "/app/user/cert.crt"
  tls_key_file = "/app/user/key.key"
}
