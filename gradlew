#!/bin/sh
command -v gradle >/dev/null 2>&1 || { echo "Install Gradle 8.12+ and add it to PATH"; exit 1; }
exec gradle "$@"
