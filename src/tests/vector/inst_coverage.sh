#!/bin/bash

# 检查是否提供了目录参数
if [ "$#" -ne 1 ]; then
    echo "用法: $0 <路径到.asm文件的目录>"
    exit 1
fi

# 指定包含指令的文件
INST_FILE="extension_inst.txt"
ASM_DIR="$1"  # 使用传入的目录路径

# 读取指令文件中的指令，忽略空行和注释
readarray -t instructions < <(grep -vE '^\s*#|^\s*$' "$INST_FILE")

# 创建一个数组存储提取的指令
extracted_instructions=()

# 遍历指定目录下的所有 .s 文件
for ASM_FILE in "$ASM_DIR"/*.s; do
    # 从 .s 文件中提取指令（假设指令在每行的第4列）
    asm_instructions=$(grep -oP '\s+\w+\s+\w+\s+\w+\s+\w+\s+\K\w+(\.\w+)*' "$ASM_FILE")

    # 将提取的指令添加到数组中
    extracted_instructions+=($asm_instructions)
done

# 创建两个数组来存储存在和不存在的指令
exists=()
not_exists=()

# 遍历指令并检查每个指令是否在提取的指令中
for instr in "${instructions[@]}"; do
    if printf '%s\n' "${extracted_instructions[@]}" | grep -q -w "$instr"; then
        exists+=("$instr")
    else
        not_exists+=("$instr")
    fi
done

# 输出存在的指令
echo "存在的指令 (${#exists[@]} 条)："
printf '%s\n' "${exists[@]}"

# 输出不存在的指令
echo "不存在的指令 (${#not_exists[@]} 条)："
printf '%s\n' "${not_exists[@]}"

