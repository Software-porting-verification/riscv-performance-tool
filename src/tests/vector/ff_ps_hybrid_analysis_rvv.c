#include <stdio.h>
#include <stddef.h> // for ptrdiff_t

typedef float INTFLOAT; // 定义 INTFLOAT 类型
typedef double INT64FLOAT; // 定义 INT64FLOAT 类型

#define USE_FIXED 0 // 如果需要使用定点格式，将此值更改为 1

void ps_hybrid_analysis_c(INTFLOAT (*restrict out)[2],
                                 INTFLOAT (*in)[2],
                                 const INTFLOAT (*filter)[8][2],
                                 ptrdiff_t stride, int n) {
    INT64FLOAT inre0[6], inre1[6], inim0[6], inim1[6];

    for (int j = 0; j < 6; j++) {
        inre0[j] = in[j][0] + in[11 - j][0]; 
        inre1[j] = in[j][1] - in[11 - j][1]; 
        inim0[j] = in[j][1] + in[11 - j][1]; 
        inim1[j] = in[j][0] - in[11 - j][0]; 

    }

    for (int i = 0; i < n; i++) { 
        INT64FLOAT sum_re = (INT64FLOAT)filter[i][6][0] * in[6][0];
        INT64FLOAT sum_im = (INT64FLOAT)filter[i][6][1] * in[6][1];

        for (int j = 0; j < 6; j++) {
            sum_re += (INT64FLOAT)filter[i][j][0] * inre0[j] -
                      (INT64FLOAT)filter[i][j][1] * inre1[j];
            sum_im += (INT64FLOAT)filter[i][j][0] * inim0[j] +
                      (INT64FLOAT)filter[i][j][1] * inim1[j];
        }
#if USE_FIXED
        out[i * stride][0] = (int)((sum_re >= 0 ? sum_re + 0x40000000 : sum_re - 0x40000000) / 0x80000000);
        out[i * stride][1] = (int)((sum_im >= 0 ? sum_im + 0x40000000 : sum_im - 0x40000000) / 0x80000000);
#else
        out[i * stride][0] = sum_re;
        out[i * stride][1] = sum_im;
#endif /* USE_FIXED */
        
        // 调试输出 sum_re 和 sum_im
        printf("out[%td]: [%f, %f]\n", i * stride, out[i * stride][0], out[i * stride][1]);
    }
}

int main() {
    // 定义输入、输出和过滤器数组
    INTFLOAT input[12][2]; // 输入数组，12x2的数组
    INTFLOAT output[8][2]; // 输出数组，8x2的数组
    INTFLOAT filter[8][8][2]; // 过滤器数组，8x8x2的数组
    ptrdiff_t stride = 1; // 步幅
    int n = 8; // 过滤器的数量

    // 初始化输入数组
    for (int i = 0; i < 12; i++) {
        input[i][0] = (INTFLOAT)(i + 1); // 示例值
        input[i][1] = (INTFLOAT)(12 - i); // 示例值
    }

    // 初始化过滤器数组
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < 8; j++) {
            filter[i][j][0] = (INTFLOAT)(i + j + 1); // 示例值，确保非零
            filter[i][j][1] = (INTFLOAT)(i - j + 1); // 示例值，确保非零
            printf("filter[%d][%d]: [%f, %f]\n", i, j, filter[i][j][0], filter[i][j][1]);
        }
    }

    // 调用函数
    ps_hybrid_analysis_c(output, input, filter, stride, n);


    return 0;
}

