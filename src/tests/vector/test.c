#include <stdio.h>
#include <stdint.h>
#include <stddef.h>

#define VECTOR_LENGTH 8

// 向量加载函数
void load_vectors(uint8_t *src, uint8_t *dst, size_t size) {
    for (size_t i = 0; i < size; i += VECTOR_LENGTH) {
        // 确保不越界
        for (size_t j = 0; j < VECTOR_LENGTH; ++j) {
            if (i + j < size) {
                dst[i + j] = src[i + j];
            }
        }
    }
}

// 直接从地址加载数据的函数
void load_vectors1(uint8_t *addr, uint8_t *vec, int n) {
    for (int i = 0; i < n; i++) {
        vec[i] = addr[i];  // 直接从地址加载数据
    }
}

// 向量减法函数
void vector_subtraction(uint8_t *result, const uint8_t *a, const uint8_t b, size_t size) {
    for (size_t i = 0; i < size; i++) {
        result[i] = a[i] - b; // 模拟 vsub.vx 指令
    }
}

// 向量反向减法函数
void vector_rsubtraction(uint8_t *result, const uint8_t *a, const uint8_t b, size_t size) {
    for (size_t i = 0; i < size; i++) {
        result[i] = b - a[i]; // 模拟 vrsub.vx 指令
    }
}

void vector_ssubu_vv(uint8_t *result, const uint8_t *a, const uint8_t b, size_t size) {
    for (size_t i = 0; i < size; i++) {
        result[i] = (a[i] >= b) ? (a[i] - b) : 0; 
    }
}
int main() {
    uint8_t src[16] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};
    uint8_t dst[16] = {0};
    uint8_t result_sub[16] = {0};
    uint8_t result_rsub[16] = {0};
    uint8_t result_ssubu_vv[16] = {0};
    uint8_t scalar = 5; // 用于减法的标量值

    // 加载向量
    load_vectors(src, dst, 16);
    load_vectors1(src, dst, 16);

    // 进行向量减法
    vector_subtraction(result_sub, dst, scalar, 16);
    vector_rsubtraction(result_rsub, dst, scalar, 16);
    
    vector_ssubu_vv(result_ssubu_vv, dst, scalar, 16);
    // 打印结果
    printf("Result of vsub.vx:\n");
    for (size_t i = 0; i < 16; i++) {
        printf("%d ", result_sub[i]);
    }
    printf("\n");

    printf("Result of vrsub.vx:\n");
    for (size_t i = 0; i < 16; i++) {
        printf("%d ", result_rsub[i]);
    }
    printf("\n");

    return 0;
}
