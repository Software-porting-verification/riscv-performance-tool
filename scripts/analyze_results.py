import matplotlib.pyplot as plt

# 假设我们从多个测试运行中收集到的数据
instruction_types = ['vadd.vv']
cycles = [500]  # 从测试结果收集到的周期数

plt.bar(instruction_types, cycles)
plt.xlabel('Instruction Type')
plt.ylabel('Cycles')
plt.title('RVV vadd.vv Instruction Performance')
plt.show()

