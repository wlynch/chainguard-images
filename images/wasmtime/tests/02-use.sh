#!/usr/bin/env bash

set -o errexit -o nounset -o errtrace -o pipefail -x

echo "${IMAGE_NAME}"

# The vendored wasmtest binary is a simple "Hello, world!" program.
docker run -v "$(pwd):/work" -w /work "${IMAGE_NAME}" run /work/images/wasmtime/tests/wasmtest | grep "Hello, World!"
