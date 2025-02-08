#!/bin/bash

QEMU=qemu-system-riscv64

$QEMU -machine virt -bios ~/implementations/riscv/opensbi/build/platform/generic/firmware/fw_jump.bin -nographic -serial mon:stdio --no-reboot
