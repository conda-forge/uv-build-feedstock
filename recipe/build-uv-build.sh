#!/usr/bin/env bash
set -eux
"${PYTHON}" -m pip install . -vv --no-deps --no-build-isolation

cargo-bundle-licenses \
  --format yaml \
  --output "${SRC_DIR}/THIRDPARTY.yml"
