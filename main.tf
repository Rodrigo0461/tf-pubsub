
resource "google_pubsub_subscription" "default" {
  name  = "default-subscription"
  topic = "projects/test-python-278102/topics/hello-topic"
}

resource "google_pubsub_subscription" "sub-a" {
  name  = "subscription-a"
  topic = "projects/test-python-278102/topics/hello-topic"
}
