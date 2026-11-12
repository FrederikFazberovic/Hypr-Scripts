#!/usr/bin/env bash
# Tailscale toggle script - disables Tailscale before running a command, re-enables after
# Works like prime-run/env as a generic wrapper
# example: prime-run ~/scripts/tailscale-toggle.sh %command%

tailscale down >/dev/null 2>&1 || true

"$@"
EXIT_CODE=$?

tailscale up >/dev/null 2>&1 || true

exit $EXIT_CODE
