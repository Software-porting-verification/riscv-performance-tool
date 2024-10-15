#include "perf_wrapper.h"
#include <stdio.h>
#include <string.h>

uint64_t read_perf_cycles(const char *label) {
    // 假设我们在硬件上使用 perf 或直接使用 rdcycle 指令
    // 在硬件上直接调用 rdcycle，或通过调用 perf 进行模拟
    uint64_t cycles = 0;
    if (strcmp(label, "start") == 0) {
        asm volatile ("rdcycle %0" : "=r" (cycles));
    } else if (strcmp(label, "end") == 0) {
        asm volatile ("rdcycle %0" : "=r" (cycles));
    }
    return cycles;
}
