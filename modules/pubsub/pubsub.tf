resource "google_pubsub_topic" "topic-a" {
  name    = "${var.name-topic-a.["${var.env}"]}"
}

resource "google_pubsub_subscription" "subcription-xa" {
  name    = "${var.name-suscription-a["${var.env}"]}."
  topic   = "${google_pubsub_topic.topic-a.name}"
}
