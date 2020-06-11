# tf-pubsub

## Instructions

## Adding credentials GCP

From the service account key page in the Cloud Console choose an existing account, or create a new one. Next, download the JSON key file. Name it something you can remember, and store it somewhere secure on your machine.

You supply the key to Terraform using the environment variable GOOGLE_APPLICATION_CREDENTIALS, setting the value to the location of the file.

```shell
export GOOGLE_APPLICATION_CREDENTIALS={{path}}
```

## Example 

```shell
export GOOGLE_APPLICATION_CREDENTIALS=/Users/rootdrigo/account.json
```
## TF Init

export vars for bucket location

example:
```shell
export TF_VAR_tf_state_bucket="name-bucket"
export TF_VAR_tf_state_prefix="name-path-bucket-prefix"
export TF_VAR_credentials="location path of credential for bucket access"
```

```shell
terraform init -backend-config "bucket=$TF_VAR_tf_state_bucket" -backend-config "prefix=$TF_VAR_tf_state_prefix" -backend-config "credentials=$TF_VAR_credentials"
```

## TF Plan
For Plan Set env QA or PROD and set var for project name
Example:
```shell
terraform plan var="env=qa" var="project=name-your-project"
```

## TF Apply
```shell
terraform apply var="env=qa" var="project=name-your-project"
```
