#!/bin/bash
function gco {
BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [[ "$BRANCH" = "master" ]]; then
  echo 'In branch master';
  exit 1;
fi
BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [[ "$BRANCH" != "dev" ]]; then
  echo 'In branch dev';
  exit 1;
fi

echo 'Error';
}

gco
