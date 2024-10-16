#include <stdio.h>
#include <stdint.h>

void vector_add(float *a, float *b, float *c, int n) {
    for (int i = 0; i < n; i++) {
        c[i] = a[i] + b[i];
    }
}

int main() {
    int n = 8;
    float a[] = {1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0};
    float b[] = {1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0};
    float c[8];

    vector_add(a, b, c, n);

    for (int i = 0; i < n; i++) {
        printf("c[%d] = %f\n", i, c[i]);
    }

    return 0;
}

