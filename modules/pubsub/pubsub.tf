resource "google_pubsub_topic" "topic-a" {
  name    = "${var.name-topic-1["${var.env}"]}"
}

resource "google_pubsub_subscription" "subcription-xa" {
  name    = "${var.name-suscription-1["${var.env}"]}."
  topic   = "${google_pubsub_topic.topic-a.name}"
}




