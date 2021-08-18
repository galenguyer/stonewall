#!/usr/bin/env bash
set -euo pipefail

DATE="$(date +%Y-%m-%d)"
composer exec traefik mv /traefik/logs/access.log /traefik/logs/access."$DATE".log --no-clobber
composer exec traefik mv /traefik/logs/traefik.log /traefik/logs/traefik."$DATE".log --no-clobber
composer exec traefik kill -s USR1 1
