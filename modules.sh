#!/bin/bash
#switches

SOURCE_DIR="$(pwd)"
OUT_DIR="~/kernel/evolve-1x/zip"

#copy stuff for our zip
echo "[BUILD]: Copying kernel (zImage) to $OUT_DIR/kernel/...";
cp arch/arm/boot/zImage ~/kernel/evolve-1x/zip/
echo "[BUILD]: Copying modules (*.ko) to $OUT_DIR/modules/...";
find . -name '*ko' -exec cp '{}' ~/kernel/evolve-1x/zip/modules/ \;
echo "[BUILD]: Done!...";
