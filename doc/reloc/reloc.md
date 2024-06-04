# 重定位

## 符号、重定位与指令

汇编指令`jal main`，使用了符号main

汇编器翻译为机器指令`jal 0`。

符号表中存在符号main。

重定位表中存在条目指向该机器指令，并记录该指令使用符号 main。

## 目标

尝试打印重定位条目

```asm
R_RISCV_CALL_PLT  main  U+I-type
97000000 e7800000
R_RISCV_JAL  f  J-type
ff5ff0ef
```

尝试将待重定位的指令中的立即数改为1234
