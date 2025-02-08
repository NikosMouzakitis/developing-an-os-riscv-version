# developing-an-os-riscv-version
developing-an-os-riscv-version


# QEMU 

## Building OpenSBI for 32-bit RISC-V (RV32)

Ensure you have the **RISC-V 32-bit toolchain** installed. If not, you can build it manually:

### Installing the RISC-V 32-bit Toolchain
Clone the repository and build the toolchain:

```sh
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
cd riscv-gnu-toolchain
./configure --prefix=/opt/riscv32 --with-arch=rv32gc --with-abi=ilp32d
make -j$(nproc) 
       	```

# comments

*text.boot*(and therefore boot function) is placed exactly at 0x80200000, 
since OpenSBI simply jumps at this address without
knowledge of a specific entry point.
