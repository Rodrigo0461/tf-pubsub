resource "google_pubsub_topic" "topic-a" {
  count   = "${var.name-topic-1["${var.env}"] != "" ? 1 : 0}"
  name    = "${var.name-topic-1["${var.env}"]}"
  project = "${var.project}"
}

resource "google_pubsub_subscription" "suscription-a" {
  name    = "${var.name-suscription-1["${var.env}"]}"
  topic   = "${var.name-topic-1["${var.env}"]}"
  project = "${var.project}"
}

resource "google_pubsub_topic_iam_binding" "binding" {
  project = "${var.project}"
  topic   = "${var.name-topic-1["${var.env}"]}"
  role    = "roles/pubsub.subscriber"
  members =  [
 		"user:${var.member-1}","user:${var.member-2}"
	     ]
}
