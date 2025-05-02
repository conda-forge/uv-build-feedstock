@echo on
"%PYTHON%" -m pip install . -vv --no-deps --no-build-isolation ^
    || exit 2

cargo-bundle-licenses ^
    --format yaml ^
    --output "%SRC_DIR%\THIRDPARTY.yml" ^
    || exit 3
