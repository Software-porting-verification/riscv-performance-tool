#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

void append_extra_bits(int32_t *buffer[2], int32_t *extra_bits_buffer[2],
                       int extra_bits, int channels, int nb_samples) {
    int ch;

    for (ch = 0; ch < channels; ch++) {
        for (int i = 0; i < nb_samples; i++) {
            buffer[ch][i] = ((unsigned)buffer[ch][i] << extra_bits) | extra_bits_buffer[ch][i];
        }
    }
}

int main() {
    int channels = 2;
    int nb_samples = 8;
    int extra_bits = 3;

    // 动态分配缓冲区
    int32_t *buffer[2];
    int32_t *extra_bits_buffer[2];

    for (int ch = 0; ch < channels; ch++) {
        buffer[ch] = (int32_t *)malloc(nb_samples * sizeof(int32_t));
        extra_bits_buffer[ch] = (int32_t *)malloc(nb_samples * sizeof(int32_t));

        // 填充示例数据
        for (int i = 0; i < nb_samples; i++) {
            buffer[ch][i] = (ch + 1) * 10 + i; // 示例填充数据
            extra_bits_buffer[ch][i] = i;     // 示例填充数据
        }
    }

    // 调用函数
    append_extra_bits(buffer, extra_bits_buffer, extra_bits, channels, nb_samples);

    // 打印结果
    printf("Final Output:\n");
    for (int ch = 0; ch < channels; ch++) {
        for (int i = 0; i < nb_samples; i++) {
            printf("buffer[%d][%d]: %d\n", ch, i, buffer[ch][i]);
        }
    }

    // 释放内存
    for (int ch = 0; ch < channels; ch++) {
        free(buffer[ch]);
        free(extra_bits_buffer[ch]);
    }

    return 0;
}
  
