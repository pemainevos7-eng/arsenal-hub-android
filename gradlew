#!/usr/bin/env sh
# Minimal wrapper launcher. GitHub Actions uses Gradle installed through setup-gradle below.
exec gradle "$@"
