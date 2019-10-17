#!/bin/bash
JOURNAL_PATH=/home/rmintz/git/r4wm/dear_diary

path_not_exists_msg(){
    echo "No path found: $JOURNAL_PATH"
    exit 1
}

usage(){
    echo "Usage: "
    echo "./journal_client.sh filename"
    exit 1
}


[ -d "$JOURNAL_PATH" ] || error_msg

[ "$#" -gt 0 ] || usage

cd "$JOURNAL_PATH"
mkdir -p "$(date +%Y/%m/%d)"
cd "$_"
touch "$1"
realpath "$1"


# Open editor  with template ?
