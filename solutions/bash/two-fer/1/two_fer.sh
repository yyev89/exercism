#!/usr/bin/env bash
#
# Returns a phrase "One for {name}, one for me" if the name is provided

name="${1:-you}"

main () {
  echo "One for $name, one for me."
}

main "$@"
