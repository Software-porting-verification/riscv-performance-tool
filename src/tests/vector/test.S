.section .data
.align 4
vector1:
    .word 1, 2, 3, 4, 5, 6, 7, 8

.section .text
.global main
main:
    la a0, vector1              # 加载 vector1 地址到 a0
    vle32.v v1, (a0)            # 加载 vector1 数据到 v1

    # 退出程序
    li a7, 93                    # 系统调用 exit
    li a0, 0                     # exit code 0
    ecall

