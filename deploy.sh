#!/bin/bash
sudo docker build -t kaiz/cloud-run-test .
gcloud builds submit --tag gcr.io/pathforge-v1/kaiz/cloud-run-test .
gcloud run deploy cloud-run-test --image gcr.io/pathforge-v1/kaiz/cloud-run-test --port=80 --allow-unauthenticated --region=asia-southeast1