.section .data
.align 4
vector1: 
    .word 1, 2, 3, 4, 5, 6, 7, 8  # 测试用的向量数据
vector2: 
    .word 8, 7, 6, 5, 4, 3, 2, 1  # 测试用的向量数据
result: 
    .space 32  # 用于存储结果的内存空间

.section .text
.global _start
_start:
    # 初始化向量寄存器长度
    vsetvli t0, zero, e32,m8  # 设置为32位元素，8个向量寄存器

    # 加载数据到向量寄存器
    vle32.v v1, (vector1)      # 加载vector1数据到v1
    vle32.v v2, (vector2)      # 加载vector2数据到v2

    # 测试vadd.vv的加法性能
    rdcycle t1                 # 记录开始时间
    vadd.vv v3, v1, v2         # v1 + v2 -> v3
    rdcycle t2                 # 记录结束时间

    # 存储结果到内存
    vse32.v v3, (result)

    # 计算消耗的周期
    sub t3, t2, t1
    # 将 t3 的值存储到寄存器或传递给C代码

    # 停止程序
    li a7, 93    # 系统调用exit
    li a0, 0     # exit code 0
    ecall

