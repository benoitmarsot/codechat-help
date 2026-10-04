#!/usr/bin/env bash
# Deploy the help site, then refresh help RAG on local, SNI, and dev.
set -euo pipefail

cd "$(dirname "$0")"

: "${LA_BENOIT_PW:?Set LA_BENOIT_PW before running this script}"

./deploy.sh

for api_url in \
  "http://localhost:8080" \
  "https://api.svc.sni.cc.platform5.dev" \
  "https://api.svc.dev.cc.platform5.dev"
do
  echo "Updating help RAG at ${api_url}"
  ../codechat/scripts/helper/update-la-help-rag.sh \
    "$api_url" "benoitmarsot@hotmail.com" "$LA_BENOIT_PW"
done
