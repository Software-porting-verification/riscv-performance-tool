#include <stdint.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h> // 用于 FFABS 宏

// 假设 FFABS 宏定义如下
#define FFABS(x) ((x) < 0 ? -(x) : (x))

typedef struct {
    void *avctx; // 这是一个占位符，实际结构可能会有所不同
} MpegEncContext;

int nsse8_c(MpegEncContext *c, const uint8_t *s1, const uint8_t *s2,
                   ptrdiff_t stride, int h) {
    int score1 = 0, score2 = 0;

    for (int y = 0; y < h; y++) {
        // 计算 score1
        for (int x = 0; x < 8; x++) {
            int diff = s1[x] - s2[x];
            score1 += diff * diff;
        }
        
        // 计算 score2
        if (y + 1 < h) {
            for (int x = 0; x < 7; x++) {
                int s1_diff = FFABS(s1[x] - s1[x + stride] - s1[x + 1] + s1[x + stride + 1]);
                int s2_diff = FFABS(s2[x] - s2[x + stride] - s2[x + 1] + s2[x + stride + 1]);
                score2 += s1_diff - s2_diff;
            }
        }
        
        s1 += stride;
        s2 += stride;
    }

    if (c) {
        return score1 + FFABS(score2) * ((int *)c->avctx)[0]; // 假设 nsse_weight 存储在 avctx 中
    } else {
        return score1 + FFABS(score2) * 8;
    }
}

// 测试代码
int main() {
    MpegEncContext context = { .avctx = (void *)(intptr_t)2 }; // 示例上下文
    uint8_t s1[8 * 10] = { 0 }; // 8x10 的示例数据
    uint8_t s2[8 * 10] = { 0 }; // 8x10 的示例数据
    ptrdiff_t stride = 8; // 每行的跨度
    int h = 10; // 行数

    // 初始化数据
    for (int i = 0; i < 80; i++) { // 80 = 8 * 10
        s1[i] = i; // 示例数据
        s2[i] = i + 1; // 示例数据
    }

    int result = nsse8_c(&context, s1, s2, stride, h);
    printf("Result: %d\n", result);

    return 0;
}

