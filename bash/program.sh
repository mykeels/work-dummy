#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

IFS=$'\n' read -d '' -r -a LINES < $DIR/../lines.txt
LINES_SIZE=${#LINES[@]}

RED="\033[0;31m"
GREEN="\033[0;32m"
BLUE="\033[0;34m"
YELLOW="\033[1;33m"
NO_COLOR="\033[0m"

declare -a COLORS=("$RED" "$GREEN" "$BLUE" "$YELLOW" "$NO_COLOR")
declare -a PREFIXES=("\t... " "\t" " \b")
declare -a INTERVALS=(100 300 600 900)

function Get-Random()
{
    ARRAY=("$@")
    ARRAY_SIZE=${#ARRAY[@]}
    ARRAY_INDEX=$(($RANDOM % $ARRAY_SIZE))
    echo "${ARRAY[$ARRAY_INDEX]}"
}

function Exit-Sequence()
{
    printf "${NO_COLOR}\n"
    exit 0
}

trap Exit-Sequence INT

while true
do
    LINE=$(Get-Random "${LINES[@]}")
    COLOR=$(Get-Random "${COLORS[@]}")
    PREFIX=$(Get-Random "${PREFIXES[@]}")
    TIMESTAMP=$(echo $(date '+%Y-%m-%d %H:%M:%S'))
    printf "${COLOR}${TIMESTAMP} ${PREFIX}${LINE}\n"
    sleep 0.3

done