#!/bin/bash

# 编译测试用例
gcc -o3 -march=rv64gcv -o vadd_test src/tests/vector/vadd_test.S

# 编译主程序
#gcc -o3 -march=rv64gcv -o test_runner src/core/test_runner.c src/utils/perf_wrapper.c -I src/utils/
# 运行测试
#./test_runner

# 输出测试结果
#echo "Test completed."

