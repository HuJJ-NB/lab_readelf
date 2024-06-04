# READELF

## 目标

```asm
file : exit.c
section:
.text :
off  : 92
size : 16
.data :
off  : a8
size : 4
...

symbols :
local i : .data + 0 : 4
globl main : .text + 0 : 10
globl exit : UND
...
```

## ELF结构

![elf](pic/ELF.png)

## ELF规范

参考头文件`elf.h`
参考各架构abi规范

## 读取EHDR

![ehdr](pic/ehdr.jpg)

## 读取SHDR

![shdr](pic/shdr.jpg)

## 读取section

![section](pic/section.jpg)

## 读取name

![name](pic/name.jpg)
