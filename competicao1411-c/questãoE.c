#include <stdio.h>

int main() {
    double soma2 = 0;
    for (int i = 0; i < 10 * 3; i++) {
        soma2 += 1 / 3.0;
    }
    printf("%f\n", soma2);

    return 0;
}