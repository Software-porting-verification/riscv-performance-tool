#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "perf_wrapper.h"

void run_vadd_test() {
    // 调用汇编代码
    system("./vadd_test");

    // 读取测试结果（通过汇编中记录的周期数）
    uint64_t start_cycle = read_perf_cycles("start");
    uint64_t end_cycle = read_perf_cycles("end");
    uint64_t elapsed_cycles = end_cycle - start_cycle;

    printf("RVV vadd.vv test completed\n");
    printf("Elapsed cycles: %lu\n", elapsed_cycles);
}

int main() {
    printf("Running RVV vadd.vv performance test...\n");
    run_vadd_test();
    return 0;
}

