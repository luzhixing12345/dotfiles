#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

int main() {
    FILE *fp = fopen("nonexistent_file.txt", "r");
    if (fp == NULL) {
        perror("Failed to open file");
        exit(errno);
    }
    int x = open

    // ...
    return 0;
}


int function(int a, int b) {
    if (x = 1)
}

