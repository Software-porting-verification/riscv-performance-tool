#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stddef.h> // 支持 ptrdiff_t

// LPC Welch Window 函数
void lpc_apply_welch_window_c(const int32_t *data, ptrdiff_t len, double *w_data) {
    double c = 2.0 / (len - 1.0);
    double w;

    // 遍历每个元素并计算窗口值
    for (ptrdiff_t i = 0; i < len; i++) {
        w = 1.0 - ((c * (i < len / 2 ? i : len - 1 - i)) * (c * (i < len / 2 ? i : len - 1 - i)));
        w_data[i] = data[i] * w; // 应用窗口
    }
}

// 主函数
int main() {
    // 设置数据长度
    ptrdiff_t len = 10; 
    int32_t *data = (int32_t *)malloc(len * sizeof(int32_t));
    double *w_data = (double *)malloc(len * sizeof(double));

    // 初始化输入数据
    for (int i = 0; i < len; i++) {
        data[i] = i + 1; // 示例数据
    }

    // 调用 Welch 窗函数
    lpc_apply_welch_window_c(data, len, w_data);

    // 打印结果
    printf("Input Data:\n");
    for (int i = 0; i < len; i++) {
        printf("%d ", data[i]);
    }
    printf("\n\nWindowed Data:\n");
    for (int i = 0; i < len; i++) {
        printf("%f ", w_data[i]);
    }
    printf("\n");

    // 释放内存
    free(data);
    free(w_data);

    return 0;
}

