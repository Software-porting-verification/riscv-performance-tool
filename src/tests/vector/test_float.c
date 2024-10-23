#include <stdio.h>
#include <math.h>
#include <stdint.h>

#define VECTOR_SIZE 4

void vector_divide(float *a, float *b, float *c, int n) {
    for (int i = 0; i < n; i += VECTOR_SIZE) {
        for (int j = 0; j < VECTOR_SIZE; j++) {
            c[i + j] = a[i + j] / b[i + j];
        }
    }
}

void vector_abs(float *input, float *output, int n) {
    for (int i = 0; i < n; i++) {
        output[i] = fabsf(input[i]);
    }
}

void float_to_int_convert(float *input, int32_t *output, int n) {
    for (int i = 0; i < n; i++) {
        output[i] = (int32_t)truncf(input[i]);
    }
}

void vector_sgnj(float *input1, float *input2, float *output, int n) {
    for (int i = 0; i < n; i++) {
        output[i] = copysignf(fabsf(input1[i]), input2[i]);
    }
}

void vector_sqrt(float *a, float *b, int n) {
    for (int i = 0; i < n; i += VECTOR_SIZE) {
        for (int j = 0; j < VECTOR_SIZE; j++) {
            b[i + j] = sqrtf(a[i + j]);
        }
    }
}

void print_array(const char *label, float *array, int n) {
    printf("Results of %s:\n", label);
    for (int i = 0; i < n; i++) {
        printf("%s[%d] = %f\n", label, i, array[i]);
    }
}

int main() {
    int n = 8;
    float a[] = {4.0f, 9.0f, 16.0f, 25.0f, 36.0f, 49.0f, 64.0f, 81.0f};
    float b[] = {2.0f, -1.0f, 1.5f, 0.5f, 4.0f, -2.0f, 3.0f, -1.0f};
    float c[8], abs_output[8], sqrt_output[8], sgnj_output[8];
    int32_t int_output[8];

    vector_divide(a, b, c, n);
    vector_abs(a, abs_output, n);
    float_to_int_convert(a, int_output, n);
    vector_sgnj(a, b, sgnj_output, n);
    vector_sqrt(a, sqrt_output, n);

    print_array("vector division", c, n);
    print_array("vector absolute", abs_output, n);
    print_array("float to int conversion", (float *)int_output, n); // Casting for consistency
    print_array("vector sgnj", sgnj_output, n);
    print_array("vector square root", sqrt_output, n);

    return 0;
}

