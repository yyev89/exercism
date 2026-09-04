#!/usr/bin/env bash

score=$1
command=$2
item=$3

declare -A allergies=(
    [eggs]=1
    [peanuts]=2
    [shellfish]=4
    [strawberries]=8
    [tomatoes]=16
    [chocolate]=32
    [pollen]=64
    [cats]=128
)

if [[ "$command" == "allergic_to" ]]; then
    value=${allergies[$item]}

    if (( score & value )); then
        echo "true"
    else
        echo "false"
    fi

elif [[ "$command" == "list" ]]; then
    result=()

    for item in eggs peanuts shellfish strawberries tomatoes chocolate pollen cats; do
        value=${allergies[$item]}

        if (( score & value )); then
            result+=("$item")
        fi
    done

    echo "${result[*]}"
fi
