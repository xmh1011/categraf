#!/usr/bin/env bash

set -e

go list ./... | grep -vE "/inputs/mtail/internal/runtime/compiler/parser|pkg/otel/fanoutconsumer|pkg/otel/pipelines" | xargs go vet -tests=false