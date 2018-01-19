#!/bin/bash

REPOS=()
REPOS=( "${REPOS[@]}" "https://github.com/lucky2you/suzaku-app.git src/suzaku-app")
REPOS=( "${REPOS[@]}" "https://github.com/lucky2you/suzaku-addons.git src/suzaku-addons")
REPOS=( "${REPOS[@]}" "https://github.com/lucky2you/suzaku-saas-tools.git src/suzaku-saas-tools")
REPOS=( "${REPOS[@]}" "https://github.com/lucky2you/suzaku-install-script.git src/suzaku-install-script")

BRANCH=suzaku

function usage()
{
    echo "Usage: $0 { init }"
}

function init()
{
    # Get sources
    for r in "${REPOS[@]}"; do
        eval "git clone --depth=1 -b ${BRANCH} $r" || echo "Cannot clone: git clone -b ${BRANCH} $r"
    done
}

case $1 in
    "init")
        init
        ;;
    *)
        usage
        ;;
esac
exit 0
