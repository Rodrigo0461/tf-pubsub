##### Topic
variable "name-topic-1" {
  default = {
    "qa"="topic1-qa"
    "prod"="topic1-prod"
  }
}

##### Suscription
variable "name-suscription-1" {
  default = {
    "qa"="suscription1-qa"
    "prod"="suscription1-prod"
  }
}

variable "env" {}
  