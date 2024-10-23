#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

static inline float av_clipf(float value, float min, float max) {
    if (value < min) return min;
    if (value > max) return max;
    return value;
}

void vector_clipf_c(float *dst, const float *src, int len, float min, float max) {
    for (int i = 0; i < len; i++) {
        dst[i] = av_clipf(src[i], min, max);
    }
}

int main() {
    int len = 20;
    float src[20] = { -10.0f, 0.0f, 5.0f, 15.0f, 20.0f, -5.0f, 3.0f, 9.0f,
                      12.0f, 8.0f, 7.0f, -2.0f, 25.0f, 1.0f, 0.0f, 4.0f,
                      14.0f, 11.0f, 6.0f, 2.0f };
    float dst[20];
    float min = 0.0f;
    float max = 10.0f;

    // 调用函数
    vector_clipf_c(dst, src, len, min, max);

    // 打印结果
    printf("Clipped values:\n");
    for (int i = 0; i < len; i++) {
        printf("dst[%d]: %f\n", i, dst[i]);
    }

    return 0;
}

