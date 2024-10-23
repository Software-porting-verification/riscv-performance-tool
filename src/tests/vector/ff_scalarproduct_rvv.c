#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stddef.h>
#include <omp.h>

double ff_scalarproduct_double_c(const double *v1, const double *v2, size_t len) {
    double p = 0.0;
    {
        double local_sum = 0.0;

        for (size_t i = 0; i < len; i++) {
            local_sum += v1[i] * v2[i];
        }

        p += local_sum;  // 使用原子操作以避免竞争条件
    }

    return p;
}

int main() {
    size_t len = 8;
    double v1[8] = {1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0};
    double v2[8] = {8.0, 7.0, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0};

    // 调用函数
    double result = ff_scalarproduct_double_c(v1, v2, len);

    // 打印结果
    printf("Dot product: %f\n", result);

    return 0;
}

