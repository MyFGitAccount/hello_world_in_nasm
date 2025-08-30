#include <stdio.h>

int main() {
    int a = 5, b = 10, result;

    asm("addl %%ebx, %%eax;"
        : "=a"(result)         // output
        : "a"(a), "b"(b)       // inputs
    );

    printf("Result: %d\n", result);
    return 0;
}
