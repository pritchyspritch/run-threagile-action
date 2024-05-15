FROM ghcr.io/dfe-digital/automated-threat-models:main

# Required for GitHub actions to write in /github/workspace folder
USER 0

COPY entrypoint.sh /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
