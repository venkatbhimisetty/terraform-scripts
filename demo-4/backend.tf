terraform {
  backend "s3" {
	bucket = "terraform-lab-424"
	key    = "terraform/demo4"
    }
}
