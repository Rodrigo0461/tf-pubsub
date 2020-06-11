##### Topic
variable "name-topic-1" {
  default = {
    "qa"="topic-qa"
    "prod"="topic-prod"
  }
}


variable "name-suscription-1" {
  default = {
    "qa"="suscription1-qa"
    "prod"="suscription1-prod"
  }
}

variable "env" {}
   