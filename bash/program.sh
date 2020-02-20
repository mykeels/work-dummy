#!/bin/bash

COMPUTER_NAME="$(uname -n)"
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

# selects a random item in an array
function Get-Random()
{
    ARRAY=("$@")
    ARRAY_SIZE=${#ARRAY[@]}
    ARRAY_INDEX=$(($RANDOM % $ARRAY_SIZE))
    echo "${ARRAY[$ARRAY_INDEX]}"
}

# will run at CTRL+C
function Exit-Sequence()
{
    printf "${NO_COLOR}\n"
    echo "Deployment Complete"
    exit 0
}

# detects CTRL+C
trap Exit-Sequence INT

echo "Now deploying on $COMPUTER_NAME"

while true
do
    LINE=$(Get-Random "${LINES[@]}")
    COLOR=$(Get-Random "${COLORS[@]}")
    PREFIX=$(Get-Random "${PREFIXES[@]}")
    TIMESTAMP=$(echo $(date '+%Y-%m-%d %H:%M:%S'))
    printf "${COLOR}${TIMESTAMP} ${PREFIX}${LINE}\n"
    sleep 0.3

done