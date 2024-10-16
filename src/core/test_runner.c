#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

void run_vadd_test() {
    system("perf record -g ./vadd_test");
}

int main() {
    printf("Running RVV vadd.vv performance test...\n");
    run_vadd_test();
    return 0;
}

