provider "google" {
  credentials = file("account.json")
  project     = "my-nsr"
}
