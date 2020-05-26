###### main tf ############


#--------- Recurso Pub/Sub Topic Extraccion -----------#

# Tema
resource "google_pubsub_topic" "topic-a" {
  name = "${var.name-topic-1}"

}


#---------  suscripción Extraccion ----------#

##############SUB-1#############

resource "google_pubsub_subscription" "suscription-a" {
  name  = "${var.name-suscripcion-1}"
  topic = "${google_pubsub_topic.topic-a.name}"

    
  # Periodo de retención del mensaje (3 dias en segundos)
  message_retention_duration = "259200s"
  
  # Límite de confirmación (El plazo límite debe ser de 10 a 600 segundos)
  ack_deadline_seconds = 10

  # Conservar mensajes confirmados
  retain_acked_messages = true
}

