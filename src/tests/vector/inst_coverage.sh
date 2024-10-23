#!/bin/bash

# 指定包含指令的文件和搜索的.s文件
INST_FILE="v_ext_inst.txt"
ASM_FILE="ff_ps_hybrid_analysis_rvv.s"  # 替换为实际的.s文件路径

# 读取指令文件中的指令，忽略空行和注释
readarray -t instructions < <(grep -vE '^\s*#|^\s*$' "$INST_FILE")

# 从.s文件中提取指令
extracted_instructions=$(grep -oP '\s+\w+\s+\w+\s+\w+\s+\w+\s+\K\w+(\.\w+)*' "$ASM_FILE")

# 创建两个数组来存储存在和不存在的指令
exists=()
not_exists=()

# 遍历指令并进行匹配和替换
for instr in "${instructions[@]}"; do
    matched=false

    # 检查指令中是否同时存在 <nf> 和 <eew>
    if [[ "$instr" == *"<nf>"* && "$instr" == *"<eew>"* ]]; then
        for nf in {1..8}; do
            for eew in 8 16 32 64; do
                replaced_instr="${instr//<nf>/$nf}"
                replaced_instr="${replaced_instr//<eew>/$eew}"

                # 检查替换后的指令是否在提取的指令中
                if echo "$extracted_instructions" | grep -q -w "$replaced_instr"; then
                    exists+=("$replaced_instr")
                    matched=true
                    break 2  # 退出两个循环
                fi
            done
        done
    else
        # 如果指令中不同时存在 <nf> 和 <eew>，直接比较原指令
        if echo "$extracted_instructions" | grep -q -w "$instr"; then
            exists+=("$instr")
            matched=true
        fi
    fi

    # 如果没有找到匹配，记录为不存在的指令
    if [ "$matched" = false ]; then
        not_exists+=("$instr")
    fi
done

# 输出存在的指令
echo "存在的指令 (${#exists[@]} 条)："
printf '%s\n' "${exists[@]}"

# 输出不存在的指令
echo "不存在的指令 (${#not_exists[@]} 条)："
printf '%s\n' "${not_exists[@]}"

