#!/bin/bash

if [ ! -d .build ]; then
  cp .ct-ng_config .config
  ct-ng -f .ct-ng_config build
  make mrproper
fi

export ARCH=arm64
CROSS_COMPILE="$(pwd)/.build/aarch64-unknown-linux-gnu/buildtools/bin/aarch64-unknown-linux-gnu-"
export CROSS_COMPILE

if [ ! -f .config ]; then
  make superbird_defconfig
fi

make Image-dtb
