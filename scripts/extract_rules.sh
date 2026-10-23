#!/bin/bash
set -e

# 输入文件、输出目录
INPUT_FILE=$1
OUTPUT_DIR=$2
PREFIX=$3

mkdir -p "$OUTPUT_DIR"

# 提取 domain: 开头的域名，去掉前缀
grep "^domain:" "$INPUT_FILE" | sed 's/^domain://' | sort -u > "$OUTPUT_DIR/${PREFIX}_domain.txt"

# 提取 IPv4/IPv6 和 CIDR 行（数字开头的行）
grep -E "^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+|^[0-9a-fA-F:]+" "$INPUT_FILE" | sort -u > "$OUTPUT_DIR/${PREFIX}_ip.txt"

echo "提取完成: $PREFIX"
echo "域名数量: $(wc -l < "$OUTPUT_DIR/${PREFIX}_domain.txt")"
echo "IP/CIDR数量: $(wc -l < "$OUTPUT_DIR/${PREFIX}_ip.txt")"

