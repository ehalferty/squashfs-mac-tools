#!/bin/bash
rm -rf squashfs-tools/unsquashfs
rm -rf squashfs-tools/mksquashfs

cd squashfs-tools && \
EXTRA_CFLAGS=-std=gnu89 \
LZ4_SUPPORT=1 \
LZO_SUPPORT=1 \
XZ_SUPPORT=1 \
LZMA_XZ_SUPPORT=1 \
ZSTD_SUPPORT=1 \
XATTR_SUPPORT=1 \
make

# EXTRA_CFLAGS=-std=gnu89
# LZ4_DIR=#{Formula["lz4"].opt_prefix}
# LZ4_SUPPORT=1
# LZO_DIR=#{Formula["lzo"].opt_prefix}
# LZO_SUPPORT=1
# XZ_DIR=#{Formula["xz"].opt_prefix}
# XZ_SUPPORT=1
# LZMA_XZ_SUPPORT=1
# ZSTD_DIR=#{Formula["zstd"].opt_prefix}
# ZSTD_SUPPORT=1
# XATTR_SUPPORT=1

