#!/bin/bash

QEMU=qemu-system-riscv64

CC=riscv64-unknown-elf-gcc
CFLAGS=" -march=rv32gc -mabi=ilp32d -std=c11 -O2 -g3 -Wall -Wextra -fno-stack-protector -ffreestanding -nostdlib"

$CC $CFLAGS -Wl,-Tkernel.ld -Wl,-Map=kernel.map -o kernel.elf kernel.c

$QEMU -smp 1 -nographic -machine virt -bios ~/implementations/riscv/opensbi/build/platform/generic/firmware/fw_jump.bin -serial mon:stdio --no-reboot -kernel kernel.elf
