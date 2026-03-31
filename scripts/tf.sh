#!/usr/bin/env bash
set -euo pipefail

ENV="${1:-}"
CREATED_BY="${2:-}"

if [[ -z "$ENV" ]]; then
  read -rp "Choose environment (dev/uat/prd): " ENV
fi

if [[ -z "$CREATED_BY" ]]; then
  read -rp "Enter your name (createdBy): " CREATED_BY
fi

case "$ENV" in
  dev|uat|prd) ;;
  *) echo "Invalid environment: $ENV"; exit 1 ;;
esac

cd "$(dirname "$0")/../live/$ENV"
terraform init
terraform apply \
  -var="environment=$ENV" \
  -var="created_by=$CREATED_BY" \
  -var-file="$ENV.tfvars"