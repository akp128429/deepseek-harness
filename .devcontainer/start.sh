#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
if [[ -n "${CODESPACE_NAME:-}" && -n "${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN:-}" ]]; then
  app_host="${CODESPACE_NAME}-3080.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
  exec pnpm dsh web --no-open --port 3080 --public-url "https://${app_host}/" --trusted-host "${app_host}"
fi
exec pnpm dsh web --no-open --port 3080
