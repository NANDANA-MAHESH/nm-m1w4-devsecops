policy "nm-enforce-s3-encryption" {
  source = "./nm-enforce-s3-encryption.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "nm-require-tags" {
  source = "./nm-require-tags.sentinel"
  enforcement_level = "advisory"
}

