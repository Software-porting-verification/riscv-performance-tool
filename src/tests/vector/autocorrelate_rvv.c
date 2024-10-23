#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

typedef struct {
    float re; // 实部
    float im; // 虚部
} SoftFloat;

inline SoftFloat autocorr_calc(int64_t accu) {
    int nz, mant, expo;
    unsigned round;
    int i = (int)(accu >> 32);
    if (i == 0) {
        nz = 1;
    } else {
        nz = 0;
        while (abs(i) < 0x40000000) {
            i *= 2;
            nz++;
        }
        nz = 32 - nz;
    }

    round = 1U << (nz - 1);
    mant = (int)((accu + round) >> nz);
    mant = (mant + 0x40LL) >> 7;
    mant *= 64;
    expo = nz + 15;

    SoftFloat result;
    result.re = mant; // 根据需要进行调整
    result.im = expo; // 根据需要进行调整
    return result;
}

void autocorrelate(const int x[40][2], SoftFloat phi[3][2][2], int lag) {
    int i;
    int64_t real_sum, imag_sum;
    int64_t accu_re = 0, accu_im = 0;

    if (lag) {
        #pragma clang loop vectorize(enable)
        for (i = 1; i < 38; i++) {
            accu_re += (uint64_t)x[i][0] * x[i + lag][0];
            accu_re += (uint64_t)x[i][1] * x[i + lag][1];
            accu_im += (uint64_t)x[i][0] * x[i + lag][1];
            accu_im -= (uint64_t)x[i][1] * x[i + lag][0];
        }

        real_sum = accu_re;
        imag_sum = accu_im;

        accu_re += (uint64_t)x[0][0] * x[lag][0];
        accu_re += (uint64_t)x[0][1] * x[lag][1];
        accu_im += (uint64_t)x[0][0] * x[lag][1];
        accu_im -= (uint64_t)x[0][1] * x[lag][0];

        phi[2 - lag][1][0] = autocorr_calc(accu_re);
        phi[2 - lag][1][1] = autocorr_calc(accu_im);

        if (lag == 1) {
            accu_re = real_sum;
            accu_im = imag_sum;
            accu_re += (uint64_t)x[38][0] * x[39][0];
            accu_re += (uint64_t)x[38][1] * x[39][1];
            accu_im += (uint64_t)x[38][0] * x[39][1];
            accu_im -= (uint64_t)x[38][1] * x[39][0];

            phi[0][0][0] = autocorr_calc(accu_re);
            phi[0][0][1] = autocorr_calc(accu_im);
        }
    } else {
        #pragma clang loop vectorize(enable)
        for (i = 1; i < 38; i++) {
            accu_re += (uint64_t)x[i][0] * x[i][0];
            accu_re += (uint64_t)x[i][1] * x[i][1];
        }
        real_sum = accu_re;
        accu_re += (uint64_t)x[0][0] * x[0][0];
        accu_re += (uint64_t)x[0][1] * x[0][1];

        phi[2][1][0] = autocorr_calc(accu_re);

        accu_re = real_sum;
        accu_re += (uint64_t)x[38][0] * x[38][0];
        accu_re += (uint64_t)x[38][1] * x[38][1];

        phi[1][0][0] = autocorr_calc(accu_re);
    }
}

// 测试代码
int main() {
    // 示例数据
    int x[40][2] = {
        {1, 2}, {3, 4}, {5, 6}, {7, 8},
        {9, 10}, {11, 12}, {13, 14}, {15, 16},
        {17, 18}, {19, 20}, {21, 22}, {23, 24},
        {25, 26}, {27, 28}, {29, 30}, {31, 32},
        {33, 34}, {35, 36}, {37, 38}, {39, 40},
        {41, 42}, {43, 44}, {45, 46}, {47, 48},
        {49, 50}, {51, 52}, {53, 54}, {55, 56},
        {57, 58}, {59, 60}, {61, 62}, {63, 64},
        {65, 66}, {67, 68}, {69, 70}, {71, 72},
        {73, 74}, {75, 76}, {77, 78}, {79, 80}
    };

    SoftFloat phi[3][2][2] = {0}; // 初始化 phi 数组

    // 计算自相关
    for (int lag = 0; lag < 3; lag++) {
        autocorrelate(x, phi, lag);
    }

    // 打印结果
    printf("Autocorrelation results:\n");
    for (int lag = 0; lag < 3; lag++) {
        printf("Lag %d:\n", lag);
        printf("phi[2 - lag][1][0]: %f\n", phi[2 - lag][1][0].re);
        printf("phi[2 - lag][1][1]: %f\n", phi[2 - lag][1][1].re);
        printf("\n");
    }

    return 0;
}

