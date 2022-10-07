# Cloud IDS Log export to BQ
Terraform deployment for Cloud Routers log sink and Bigquery dataset for Cloud IDS and Cloud Armor logs

Cloud IDS endpoint is not provisionned via this terraform.
Cloud Armor policies and rules are not provisionned via this terraform.

This code is not ment to be used in a production environment!

Please review before usage.

## Provision infrastructure
```
terraform init
terraform plan
terraform apply -auto-approve
```

## Actions taken by terraform
```
Creation of a Service account for Looker (ntsa-looker-sa@[project_id].iam.gserviceaccount.com)
Creation of  a Bigquery Dataset for Cloud IDS and Cloud Armor logs
Creating a Cloud Router log sink to BigQuery
Binding of the Looker service account to BigQuery dataset
Binding of the  writer_identity IAM access to BigQuery dataset to write logs

```
### Filter
Default active filters, feel free to modify those filters to reflect your needs.
ids.googleapis.com%2Fthreat
ids.googleapis.com%2Ftraffic
requests