backend "s3" {
  bucket = "ys-vault"
}

disable_mlock = true

listener "tcp" {
  address = "0.0.0.0:{{PORT}}"
  tls_disable = "LOL"
  tls_cert_file = "/app/user/cert.crt"
  tls_key_file = "/app/user/key.key"
}
