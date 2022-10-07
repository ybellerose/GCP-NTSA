# GCP-NTSA
Network Threats Security Assessment for GCP

This code is not ment to be used in a production environment! Please review before usage.

## What is NTSA
NTSA is a combinaison of Google cloud tools to provide visibility on North-South and East-West communication for network threats, exploits, Malware, command and control and data exfiltration.

## What NTSA is not offering
NTSA is not going to provide deep packet inspection. NTSA doesn't use SSL decryption. All the results are analyse from traffic patterns and request headers.

The visualization tool is not provisionned with NTSA, to maximize the visibility on the results, you can leverage Looker and the public market place block for Cloud IDS and Cloud Armor.


## In the repository you will find:

- Terraform script to deploy Cloud logging and the routing to Bigquery;
- Terraform script to Setup Private service access;
- An sh script to generate the gcloud command to deploy Cloud IDS;
- Terraform script to Deploy Cloud Armor (Including top 10 OWASP, GeoFencing, rate limiting, Log4j, etc.);
