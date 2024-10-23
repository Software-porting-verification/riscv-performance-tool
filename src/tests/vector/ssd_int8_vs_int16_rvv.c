#include <stdio.h>
#include <stdint.h>

int ssd_int8_vs_int16_c(const int8_t *pix1, const int16_t *pix2, intptr_t size) {
    int score = 0;

    // Process elements in chunks of 4 (assuming the architecture supports at least 4-wide vectorization)
    // Handle remaining elements
    for (intptr_t i = 0; i < size; i++) {   
        score += (pix1[i] - pix2[i]) * (pix1[i] - pix2[i]);
    }

    return score;
}

int main() {
    // Example usage
    int8_t pix1[] = {1, 2, 3, 4, 5, 6, 7, 8};
    int16_t pix2[] = {1, 2, 3, 4, 5, 6, 7, 8};
    intptr_t size = sizeof(pix1) / sizeof(pix1[0]);

    int score = ssd_int8_vs_int16_c(pix1, pix2, size);
    printf("Score: %d\n", score);

    return 0;
}

