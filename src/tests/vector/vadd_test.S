.section .data
.align 4
vector1:
    .word 1, 2, 3, 4, 5, 6, 7, 8  # 测试用的向量数据
vector2:
    .word 8, 7, 6, 5, 4, 3, 2, 1  # 测试用的向量数据
result:
    .space 32  # 用于存储结果的内存空间
cycles_used:
    .space 4   # 用于存储周期数

.section .text
.global main
main:
    la a0, vector1              # 加载 vector1 地址到 a0
    andi t4, a0, 3              # 检查 a0 是否对齐到 4 字节
    bne t4, zero, exit          # 如果最低两位不为 0，则未对齐，退出

    vle32.v v1, (a0)            # 加载 vector1 数据到 v1

    la a1, vector2              # 加载 vector2 地址到 a1
    andi t4, a1, 3              # 检查 a1 是否对齐到 4 字节
    bne t4, zero, exit          # 如果最低两位不为 0，则未对齐，退出

    vle32.v v2, (a1)            # 加载 vector2 数据到 v2

    # 进行加法操作
    rdcycle t1                   # 记录开始时间
    vadd.vv v3, v1, v2           # v1 + v2 -> v3
    rdcycle t2                   # 记录结束时间

    # 存储结果到内存
    la a2, result
    vse32.v v3, (a2)

    # 计算消耗的周期
    sub t3, t2, t1
    # 将 t3 的值存储到寄存器或传递给 C 代码

    # 退出程序
exit:
    li a7, 93                    # 系统调用 exit
    li a0, 0                     # exit code 0
    ecall
