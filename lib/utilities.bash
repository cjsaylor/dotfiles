#! /usr/bin/env bash
#
# Common development shorthand commands for dev
###

# OSX notification after long running task
# Usage: sleep 5 && notifyme "Long task is done"
function notifyme() {
    local message="${1}"
    local title="${2:-"Notification"}"
    osascript -e "display notification \"${message}\" with title \"${title}\""
}