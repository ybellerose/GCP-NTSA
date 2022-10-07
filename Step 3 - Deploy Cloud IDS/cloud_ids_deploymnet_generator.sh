#!/bin/bash
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

clear
echo "No action will be taken by this scritp. Use the output as your deployment command."
echo ""
echo ""
echo "General configuration"
echo -e ${YELLOW}"What is your project id?" ${NC}
read project_id
export PROJECT_ID=${project_id}

echo -e ${YELLOW}"On which VPC do you want to setup CLOUD IDS?" ${NC}
read vpc_name
export VPC_NAME=${vpc_name}

echo -e ${YELLOW}"Name of your IDS endpoint? (lowercase no space)" ${NC}
read ids_endpoint_name
export IDS_ENDPOINT_NAME=${ids_endpoint_name}

echo -e ${YELLOW}"In which zone your IDS Endpoint will be deployed?" ${NC}
read ids_endpoint_zone
export IDS_ENDPOINT_ZONE=${ids_endpoint_zone}


echo -e ${YELLOW}"Using which serverity level do you want your IDS Endpoint to be deployed?" ${NC}
echo "  1)INFORMATIONAL"
echo "  2)LOW"
echo "  3)MEDIUM"
echo "  4)HIGH"
echo "  5)CRITICAL"  

read ids_severity

case $ids_severity in
  1) export IDS_SEVERITY=INFORMATIONAL;;
  2) export IDS_SEVERITY=LOW;;
  3) export IDS_SEVERITY=MEDIUM;;
  4) export IDS_SEVERITY=HIGH;;
  5) export IDS_SEVERITY=CRITICAL;;
esac

clear
echo ""
echo ""
echo -e ${YELLOW} "Run this command to initiate the deployment of CLOUD IDS (Deployment can take up to 15 minutes)"${NC}

echo "gcloud ids endpoints create $IDS_ENDPOINT_NAME \
--network=$VPC_NAME \
--zone=$IDS_ENDPOINT_ZONE \
--severity=$IDS_SEVERITY \
--enable-traffic-logs \
--async"

echo ""
echo -e ${YELLOW} "To Verify Cloud IDS endpoint is initiated"${NC}
echo "gcloud ids endpoints list --project=$PROJECT_ID"