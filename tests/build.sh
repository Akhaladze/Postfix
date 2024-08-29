#!/bin/bash
docker build -t gitlab.mbit-consultants.com:5678/infra/postfix .
docker push gitlab.mbit-consultants.com:5678/infra/postfix

#curl -X POST "https://portainer.mbit-consultants.com/api/stacks/webhooks/37137e1c-7d18-4afa-943c-7168ab196959"
#curl -X POST "http://10.101.101.2:9000/api/stacks/webhooks/37137e1c-7d18-4afa-943c-7168ab196959"