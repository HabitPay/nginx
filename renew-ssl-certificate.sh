#!/bin/bash

APPLICATION_NAME="habitpay"
LOG_FILE="/var/log/$APPLICATION_NAME/renew-ssl.log"

log() {
    local msg="$1"
    printf '[INFO] %s %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$msg"
}

log_error() {
    local msg="$1"
    printf '[ERROR] %s %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$msg" >&2
}

main() {
    docker compose up certbot
}

main >> "$LOG_FILE" 2>&1