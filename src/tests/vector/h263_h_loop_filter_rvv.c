#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define FFABS(x) ((x) < 0 ? -(x) : (x))

const uint8_t ff_h263_loop_filter_strength[32] = {
    0, 1, 1, 2, 2, 3, 3,  4,  4,  4,  5,  5,  6,  6,  7, 7,
    7, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11, 12, 12, 12
};

static int av_clip(int a, int min, int max) {
    return a < min ? min : (a > max ? max : a);
}

static void h263_h_loop_filter_c(uint8_t *src, int stride, int qscale) {
    int y;
    const int strength = ff_h263_loop_filter_strength[qscale];

    for (y = 0; y < 8; y++) {
        int d1, d2, ad1;
        int p0 = src[y * stride - 2];
        int p1 = src[y * stride - 1];
        int p2 = src[y * stride + 0];
        int p3 = src[y * stride + 1];
        int d  = (p0 - p3 + 4 * (p2 - p1)) / 8;

        if (d < -2 * strength)
            d1 = 0;
        else if (d < -strength)
            d1 = -2 * strength - d;
        else if (d < strength)
            d1 = d;
        else if (d < 2 * strength)
            d1 = 2 * strength - d;
        else
            d1 = 0;

        p1 += d1;
        p2 -= d1;
        if (p1 & 256)
            p1 = ~(p1 >> 31);
        if (p2 & 256)
            p2 = ~(p2 >> 31);

        src[y * stride - 1] = p1;
        src[y * stride + 0] = p2;

        ad1 = FFABS(d1) >> 1;

        d2 = av_clip((p0 - p3) / 4, -ad1, ad1);

        src[y * stride - 2] = p0 - d2;
        src[y * stride + 1] = p3 + d2;
    }
}

int main() {
    // 测试数据
    uint8_t src[64] = {
        0, 10, 20, 30, 40, 50, 60, 70,
        10, 20, 30, 40, 50, 60, 70, 80,
        20, 30, 40, 50, 60, 70, 80, 90,
        30, 40, 50, 60, 70, 80, 90, 100,
        40, 50, 60, 70, 80, 90, 100, 110,
        50, 60, 70, 80, 90, 100, 110, 120,
        60, 70, 80, 90, 100, 110, 120, 130,
        70, 80, 90, 100, 110, 120, 130, 140
    };
    
    int stride = 8;  // 假设图像的宽度为8
    int qscale = 5;  // 假设量化尺度为5

    // 调用滤波器函数
    h263_h_loop_filter_c(src, stride, qscale);

    // 打印结果
    printf("Filtered values:\n");
    for (int i = 0; i < 64; i++) {
        printf("%3d ", src[i]);
        if ((i + 1) % stride == 0) printf("\n");
    }

    return 0;
}
