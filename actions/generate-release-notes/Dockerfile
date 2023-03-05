FROM alpine:3.17.2
RUN apk add --no-cache jq github-cli

ENV GH_TOKEN=

COPY generate-release-notes.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]