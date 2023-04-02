#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

int main() {
    FILE *fp = fopen("nonexistent_file.txt", "r");
    if (fp == NULL) {
        perror("Failed to open file");
        exit(errno);
    }

    // ...
    return 0;
}
