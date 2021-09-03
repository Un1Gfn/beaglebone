#!/bin/bash

# https://linuxize.com/post/pstree-command-in-linux/
# pstree -c -a -p

# Yay absorbs stdout and stderr
# Hang (H) and write feekback to log file
LOG=/tmp/gpg_proxy.log

case "$1" in

"--list-keys")
  /usr/bin/gpg "$@"
  ;;

"--recv-keys")
  shift
  [ "$#" -ge 1 ] || { echo "${BASH_SOURCE[0]}:$LINENO: err"; exit 1; }
  echo
  while [ "$#" -ge 1 ]; do
    # echo "$1"
    [[ "$1" =~ [0-9A-Z]{40} ]]
    { [ "${BASH_REMATCH[0]}" = "$1" ] && [ -z "${BASH_REMATCH[1]}" ]; } || { echo "${BASH_SOURCE[0]}:$LINENO: err"; exit 1; }
    echo "fetching $1 ..."
    gpg --recv-keys --keyserver-options "timeout=0 http-proxy=http://127.0.0.1:8080" "$1"
    echo
    shift
  done
  ;;

*)
  n=1
  date >>"$LOG"
  for i in "$@"; do
    echo "[$n] $i" >>"$LOG"
    ((n=n+1))
  done
  echo >>"$LOG"
  sleep infinity # (H)
  exit 1
  ;;

esac
