#include <stdio.h>
#include <stdlib.h>

// 定义常量参数
const float ff_jpeg2000_f_ict_params[4] = {0.5f, 0.3f, 0.2f, 0.1f};

// ict_float 函数
void ict_float(float *src0, float *src1, float *src2, const float *f_ict_params, int csize)
{
    int i;
    const float param0 = f_ict_params[0];
    const float param1 = f_ict_params[1];
    const float param2 = f_ict_params[2];
    const float param3 = f_ict_params[3];

    for (i = 0; i < csize; i++) {
        float i0f = src0[i] + (param0 * src2[i]);
        float i1f = src0[i] - (param1 * src1[i]) - (param2 * src2[i]);
        float i2f = src0[i] + (param3 * src1[i]);

        src0[i] = i0f;
        src1[i] = i1f;
        src2[i] = i2f;
    }
}

// 主函数
int main()
{
    int csize = 10; // 数组大小
    float *src0 = (float *)malloc(csize * sizeof(float));
    float *src1 = (float *)malloc(csize * sizeof(float));
    float *src2 = (float *)malloc(csize * sizeof(float));

    // 初始化 src0, src1, src2
    for (int i = 0; i < csize; i++) {
        src0[i] = i * 1.0f;
        src1[i] = i * 0.5f;
        src2[i] = i * 0.2f;
    }

    // 调用 ict_float
    ict_float(src0, src1, src2, ff_jpeg2000_f_ict_params, csize);

    // 打印结果
    printf("Result after ict_float:\n");
    for (int i = 0; i < csize; i++) {
        printf("src0[%d] = %f, src1[%d] = %f, src2[%d] = %f\n", i, src0[i], i, src1[i], i, src2[i]);
    }

    // 释放内存
    free(src0);
    free(src1);
    free(src2);

    return 0;
}

