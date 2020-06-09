#### CALL TO MODULES ##########

module "pubsub" {
  source = "./modules/pubsub"
  env    = "${var.env}"
}
