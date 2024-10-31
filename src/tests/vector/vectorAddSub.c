#include <stdint.h>
#include <stdio.h>

#define VECTOR_LENGTH 8
// 带饱和减法的宏函数
#define SATURATING_SUB_U16(x, y) ((x > y) ? (x - y) : 0)

void vector_addition_extension(uint16_t *a, uint16_t *b, uint32_t *result, int n) {
    // 生成 vwaddu.vv 指令
    #pragma clang loop vectorize(enable)
    for (int i = 0; i < n; i++) {
        result[i] = (uint32_t)a[i] + (uint32_t)b[i];
    }
}

// 新增函数：生成 vsub.vx 指令
void vector_subtraction_vector_scalar(uint16_t *a, uint16_t scalar, uint16_t *result, int n) {
    #pragma clang loop vectorize(enable)
    for (int i = 0; i < n; i++) {
        result[i] = a[i] - scalar;
    }
}

// 新增函数：生成 vrsub.vx 指令
void vector_reverse_subtraction_scalar_vector(uint16_t scalar, uint16_t *a, uint16_t *result, int n) {
    #pragma clang loop vectorize(enable)
    for (int i = 0; i < n; i++) {
        result[i] = scalar - a[i];
    }
}

// 新增函数：生成 vssubu.vv 指令
void vector_saturating_subtraction(uint16_t *a, uint16_t *b, uint16_t *result, int n) {
    #pragma clang loop vectorize(enable)
    for (int i = 0; i < n; i++) {
        result[i] = SATURATING_SUB_U16(a[i], b[i]);
    }
}

// vwsubu.wv - 宽向量与向量的宽减法 (wide vector - vector)
void vwsubu_wv(uint32_t *a, uint16_t *b, uint32_t *result, int n) {
    for (int i = 0; i < n; i++) {
        result[i] = a[i] - (uint32_t)b[i];
    }
}

int main() {
    uint16_t a[VECTOR_LENGTH] = {1, 2, 3, 4, 5, 6, 7, 8};
    uint16_t b[VECTOR_LENGTH] = {8, 7, 6, 5, 4, 3, 2, 1};
    uint32_t result[VECTOR_LENGTH] = {0};
    uint16_t scalar_result[VECTOR_LENGTH] = {0};
    uint16_t scalar = 15;

    printf("Vector A: ");
    for (int i = 0; i < VECTOR_LENGTH; i++) {
        printf("%d ", a[i]);
    }
    printf("\n");

    printf("Vector B: ");
    for (int i = 0; i < VECTOR_LENGTH; i++) {
        printf("%d ", b[i]);
    }
    printf("\n");

    // 调用各函数并打印结果
    vector_addition_extension(a, b, result, VECTOR_LENGTH);
    printf("Result of vwaddu.vv (A + B): ");
    for (int i = 0; i < VECTOR_LENGTH; i++) {
        printf("%d ", result[i]);
    }
    printf("\n");

    vector_subtraction_vector_scalar(a, 5, scalar_result, VECTOR_LENGTH);
    printf("Result of vsub.vx (A - scalar 5): ");
    for (int i = 0; i < VECTOR_LENGTH; i++) {
        printf("%d ", scalar_result[i]);
    }
    printf("\n");

    vector_reverse_subtraction_scalar_vector(5, a, scalar_result, VECTOR_LENGTH);
    printf("Result of vrsub.vx (5 - A): ");
    for (int i = 0; i < VECTOR_LENGTH; i++) {
        printf("%d ", scalar_result[i]);
    }
    printf("\n");

    vector_saturating_subtraction(a, b, scalar_result, VECTOR_LENGTH);
    printf("Result of vssubu.vv (Saturating A - B): ");
    for (int i = 0; i < VECTOR_LENGTH; i++) {
        printf("%d ", scalar_result[i]);
    }
    printf("\n");

    // vwsubu.wv
    uint32_t wide_vector[VECTOR_LENGTH] = {100, 200, 300, 400, 500, 600, 700, 800};
    vwsubu_wv(wide_vector, b, result, VECTOR_LENGTH);
    printf("Result of vwsubu.wv (Wide Vector - B): ");
    for (int i = 0; i < VECTOR_LENGTH; i++) {
        printf("%d ", result[i]);
    }
    printf("\n");    
    return 0;
}

