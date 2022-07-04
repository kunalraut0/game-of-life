#!/bin/bash

git log --decorate \
  | grep 'commit' \
  | grep 'origin/' \
  | head -n 2 \
  | tail -n 1 \
  | awk '{ print $2 }' \
  | tr -d "\n"
