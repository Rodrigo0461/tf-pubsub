resource "google_pubsub_topic" "topic-a" {
  count   = "${var.name-topic-1["${var.env}"] != "" ? 1 : 0}"
  name    = "${var.name-topic-1["${var.env}"]}"
}

resource "google_pubsub_subscription" "suscription-a" {
  name    = "${var.name-suscription-1["${var.env}"]}"
  topic   = "${var.name-topic-1["${var.env}"]}"
}
