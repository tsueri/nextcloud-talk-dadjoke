#!/bin/bash

topic=$1

  while test $# -gt 0; do
    case "$1" in
      --help)
        echo "/dadjoke - I can haz dadjoke?"
        echo " "
        echo "Try /dadjoke [topic]"
        echo " "
        echo "Stupid jokes. Ask your dad."
        echo " "
        echo "Thanks to https://icanhazdadjoke.com"
        exit 0
        ;;
      *)
        break
        ;;
   esac
  done


  if [[ -z $topic ]]; then
    echo "here's a random joke:"
    echo " "
    echo $(curl -s -H "Accept: text/plain" "https://icanhazdadjoke.com/")
    exit 0

  else

    set -f
    echo $(curl -s -H "User-Agent: Icanhazdadjoke for Nextcloud Talk (https://github.com/tsueri/nextcloud-talk-dadjoke)" "Accept: text/plain" "https://icanhazdadjoke.com/search?term="$topic"&limit=1")

  fi
