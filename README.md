# readelf lab

## 目的

1. 读取解析elf文件，打印信息
1. 尝试改写指令

## 参考

- `readelf -a *`打印elf文件信息
- `riscv-linux-gnu-objdump -d *`使用交叉编译工具打印反汇编

### 交叉编译工具链

```shell
# Ubuntu 20.24 可用
sudo apt install gcc-riscv64-linux-gnu
```

## 文件二进制读写

- 可以使用`read()`或`fread()`等函数进行文件读取
- 可以使用`int fd`或`FILE *fp`作为文件句柄。

## 测试

```shell
make run ARGS=elf/main.o
```

