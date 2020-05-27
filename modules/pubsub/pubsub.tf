resource "google_pubsub_topic" "topic-a" {
  name    = "topic-a"
}

resource "google_pubsub_subscription" "subcription-xa" {
  name    = "subscription-xa"
  topic   = "${google_pubsub_topic.topic-a.name}"
}