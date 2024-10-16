#include <stdio.h>

//#include <math.h>
//void ff_abs_pow34_rvv(float *out, const float *in, const int size)
//{
//    for (int i = 0; i < size; i++) {
//        float a = fabsf(in[i]);
//        out[i] = sqrtf(a * sqrtf(a));
//    }
//}

// 声明汇编函数
extern void ff_abs_pow34_rvv(float *out, const float *in, int size);

int main() {
    float a[] = {1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0};
    float b[8];
    ff_abs_pow34_rvv(b, a, 8);

    //printf("Output from ff_abs_pow34_rvv:\n");
    //for (int i = 0; i < 8; i++) {
    //    printf("b[%d] = %f\n", i, b[i]);
    //}

    return 0;
}

