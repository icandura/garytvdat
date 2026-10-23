#!/bin/bash
set -e

# 输入文件、输出目录
INPUT_FILE=$1
OUTPUT_DIR=$2
PREFIX=$3

mkdir -p "$OUTPUT_DIR"

# 提取 domain: 开头的域名，去掉前缀
grep "^domain:" "$INPUT_FILE" | sed 's/^domain://' | sort -u > "$OUTPUT_DIR/${PREFIX}_domain.txt"

# 严格 IPv4 CIDR 或者 IPv6 CIDR
# IPv4: 0-255.0-255.0-255.0-255(/掩码)
# IPv6: 带冒号的标准ipv6格式(/掩码)
grep -E '^(([0-9]{1,3}\.){3}[0-9]{1,3})(/[0-9]{1,2})?$|^([0-9a-fA-F:]+)(/[0-9]{1,3})?$' "$INPUT_FILE" | sort -u > "$OUTPUT_DIR/${PREFIX}_ip.txt"

echo "提取完成: $PREFIX"
echo "域名数量: $(wc -l < "$OUTPUT_DIR/${PREFIX}_domain.txt")"
echo "IP/CIDR数量: $(wc -l < "$OUTPUT_DIR/${PREFIX}_ip.txt")"

