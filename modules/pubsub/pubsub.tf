resource "google_pubsub_topic" "topic-a" {
  name    = "${var.name-topic-a}"
}

resource "google_pubsub_subscription" "subcription-xa" {
  name    = "${var.name-subscription-xa}"
  topic   = "${google_pubsub_topic.topic-a.name}"
}
