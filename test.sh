#!/usr/bin/env bash
set -ex

EXPECTED="transmission-remote 2.94 (d8e60ee44)"

docker build -t transmission-remote .

OUTPUT=$(docker run transmission-remote -V 2>&1)

if [[ "$OUTPUT" == "$EXPECTED" ]]; then
  echo "All good, output was as expected"
  exit 0
else
  echo "Something has changed: $OUTPUT"
  exit 1
fi
