#include <stdio.h>
#include <stdint.h>

void vector_operations(uint8_t *data8, uint16_t *data16, uint64_t *data64, size_t size) {
    // vsetvl: 确定向量长度
    size_t vl = size < 8 ? size : 8;  // 示例：取最小值

    // vse8.v: 填充 uint8_t 数组
    for (size_t i = 0; i < vl; i++) {
        data8[i] = (uint8_t)(i + 1);
    }

    // vse16.v: 填充 uint16_t 数组
    for (size_t i = 0; i < vl; i++) {
        data16[i] = (uint16_t)(i + 1);
    }

    // vlse64.v: 从 data64 加载到 data64_output
    for (size_t i = 0; i < vl; i++) {
        data64[i] = (uint64_t)(i + 1) * 100;  // 示例加载
    }
}

int main() {
    uint8_t data8[8] = {0};
    uint16_t data16[8] = {0};
    uint64_t data64[8] = {0};

    vector_operations(data8, data16, data64, 8);

    // 输出结果
    printf("data8: ");
    for (size_t i = 0; i < 8; i++) {
        printf("%u ", data8[i]);
    }
    printf("\n");

    printf("data16: ");
    for (size_t i = 0; i < 8; i++) {
        printf("%u ", data16[i]);
    }
    printf("\n");

    printf("data64: ");
    for (size_t i = 0; i < 8; i++) {
        printf("%llu ", data64[i]); // 使用 %llu 打印 uint64_t
    }
    printf("\n");

    return 0;
}

