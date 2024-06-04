#include <elf.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
    if (argc < 2) return -1;
    char *filename = argv[1];
    // TODO open file
    printf("file : %s\n", filename);

    Elf32_Ehdr ehdr;
    // TODO read ehdr

    Elf32_Off shdr_tab_off;
    Elf32_Half shdr_size;
    Elf32_Half shdr_num;

    // TODO get shdr info

    Elf32_Shdr *shdr_tab = malloc(shdr_size * shdr_num);
    //TODO read shdr tab

    Elf32_Section shdr_str_index;
    // TODO get shstrndx

    char *shstr;
    // TODO read shstr

    // print sections
    // print symbols

    return 0;
}
