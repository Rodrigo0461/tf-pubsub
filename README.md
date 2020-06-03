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
```shell
terraform init
```

## TF Plan
```shell
terraform plan
```

## TF Apply
```shell
terraform apply
```
