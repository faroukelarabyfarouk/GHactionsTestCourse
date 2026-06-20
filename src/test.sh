#!/bin/bash

output=$(node -e "console.log(require('./src/app')('Test'))")

if [ "$output" = "Hello, Test!" ]; then
  echo "Test passed"
  exit 0
else
  echo "Test failed: expected 'Hello, Test!' but got '$output'"
  exit 1
fi
