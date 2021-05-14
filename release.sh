#!/bin/sh

set -e

COMMIT="$(git rev-parse --verify HEAD --short)"

for V in "11-alpine"; do
  TAG="heathmont/postgres:$V-$COMMIT"
  if [ "$1" = "--push" ]; then
    docker push "$TAG"
  else
    docker build . -t "$TAG"
  fi
done
