#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

void ac3_sum_square_butterfly_float_c(float sum[4],
                                       const float *coef0,
                                       const float *coef1,
                                       int len) {
    float sum0 = 0.0f;
    float sum1 = 0.0f;
    float sum2 = 0.0f;
    float sum3 = 0.0f;

    #pragma omp simd
    for (size_t i = 0; i < len; i++) {
        float lt = coef0[i];
        float rt = coef1[i];
        float md = lt + rt;
        float sd = lt - rt;

        sum0 += lt * lt;
        sum1 += rt * rt;
        sum2 += md * md;
        sum3 += sd * sd;
    }

    sum[0] = sum0;
    sum[1] = sum1;
    sum[2] = sum2;
    sum[3] = sum3;
}

int main() {
    int len = 8;
    float coef0[] = {1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0};
    float coef1[] = {8.0, 7.0, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0};
    float sum[4] = {0.0f};

    ac3_sum_square_butterfly_float_c(sum, coef0, coef1, len);

    printf("Results:\n");
    printf("sum[0]: %f\n", sum[0]);
    printf("sum[1]: %f\n", sum[1]);
    printf("sum[2]: %f\n", sum[2]);
    printf("sum[3]: %f\n", sum[3]);

    return 0;
}

