#!/usr/bin/env bash
# Build the mkdocs site and publish it to S3 under www.liquidamber.ai/help
set -euo pipefail

AWS_PROFILE_NAME="${AWS_PROFILE_NAME:-codechat}"
BUCKET="liquidamber-help"
DISTRIBUTION_ID="ES4FJASZANR00"

cd "$(dirname "$0")"

source .venv/bin/activate
mkdocs build --clean

aws s3 sync site/ "s3://${BUCKET}/help/" --profile "$AWS_PROFILE_NAME" --delete

aws cloudfront create-invalidation \
  --distribution-id "$DISTRIBUTION_ID" \
  --paths "/help/*" \
  --profile "$AWS_PROFILE_NAME"

echo "Deployed to https://www.liquidamber.ai/help/"
