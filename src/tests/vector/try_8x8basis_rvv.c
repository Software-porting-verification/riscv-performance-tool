#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define BASIS_SHIFT 14
#define RECON_SHIFT 6

int try_8x8basis_c(const int16_t rem[64], const int16_t weight[64],
                          const int16_t basis[64], int scale) {
    int i;
    unsigned int sum = 0;

    // 这里将sum和b的计算提前
    for (i = 0; i < 64; i++) { // 改为64以便保持结构
        // 计算 b
        int b = rem[i] + ((basis[i] * scale + (1 << (BASIS_SHIFT - RECON_SHIFT - 1))) >>
                          (BASIS_SHIFT - RECON_SHIFT));
        // 计算 w
        int w = weight[i];
        // 对 b 进行右移
        b >>= RECON_SHIFT;

        // 使用断言确保 b 在有效范围内
        if (-512 < b && b < 512) {
            // 计算并更新 sum
            sum += (w * b) * (w * b) >> 4;
        }
    }
    return sum >> 2;
}

int main() {
    // 示例数据
    int16_t rem[64] = { /* 初始化数据 */ };
    int16_t weight[64] = { /* 初始化数据 */ };
    int16_t basis[64] = { /* 初始化数据 */ };
    int scale = 1; // 示例缩放因子

    // 运行函数并打印结果
    int result = try_8x8basis_c(rem, weight, basis, scale);
    printf("Result: %d\n", result);

    return 0;
}

