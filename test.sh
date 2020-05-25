#!/usr/bin/env bash
set -ex

EXPECTED="transmission-remote 3.00 (bb6b5a062e)"

docker build --pull -t transmission-remote .

OUTPUT=$(docker run --rm transmission-remote -V 2>&1)

if [[ "$OUTPUT" == "$EXPECTED" ]]; then
  echo "All good, output was as expected"
  exit 0
else
  echo "Something has changed: $OUTPUT"
  exit 1
fi
