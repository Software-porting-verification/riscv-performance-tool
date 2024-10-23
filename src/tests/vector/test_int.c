#include <stdio.h>
#include <stdint.h>

void vector_operations(uint8_t *data8, uint16_t *data16, size_t size) {
    // vsetvl
    size_t vl = size < 8 ? size : 8;  // 示例：取最小值
    // vse8.v
    for (size_t i = 0; i < vl; i++) {
        data8[i] = (uint8_t)(i + 1);
    }

    // vse16.v
    for (size_t i = 0; i < vl; i++) {
        data16[i] = (uint16_t)(i + 1);
    }

}

int main() {
    uint8_t data8[8] = {0};
    uint16_t data16[8] = {0};

    vector_operations(data8, data16, 8);

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

    return 0;
}

