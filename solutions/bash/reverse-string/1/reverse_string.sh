#!/usr/bin/env bash

# Script to reverse a string

input=$1

main () {
  local rev
  local len=${#input}

  for ((i=len-1; i>=0; i--)); do
    rev+=${input:$i:1}
  done

  echo "$rev"
}

main "$@"
