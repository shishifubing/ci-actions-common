#!/usr/bin/env bash
set -Eeuxo pipefail

github_repository="${1}"
current_tag="${2}"

releases_count=$(
    gh api                                   \
        --method GET                             \
        -H "Accept: application/vnd.github+json" \
        -F per_page=1                            \
        "/repos/${github_repository}/releases"   \
        | jq length
)

last_release="v0.1.0"
if [[ "${releases_count}" != 0 ]]; then
    last_release=$(
        gh api                                            \
            -H "Accept: application/vnd.github+json"      \
            "/repos/${github_repository}/releases/latest" \
            | jq .tag_name
    )
fi

gh api                                                    \
    --method POST                                         \
    -H "Accept: application/vnd.github+json"              \
    "/repos/${github_repository}/releases/generate-notes" \
    -f tag_name="${current_tag}"                          \
    -f previous_tag_name="${last_release}"                \
    >notes.json

printf "%s" "name=$(jq -r .name notes.json)" >>"${GITHUB_OUTPUT}"
printf "%s" "body=$(jq -r .body notes.json)" >>"${GITHUB_OUTPUT}"