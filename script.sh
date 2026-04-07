#!/usr/bin/env bash

echo "Running malicious code..."

if [ -n "$DEMO_SECRET" ]; then
  echo "Secret found: $DEMO_SECRET"
else
  echo "No secret found"
fi