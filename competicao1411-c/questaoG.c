#include <stdio.h>

int main() {
    int n, fat;

    scanf("%d", &n);
    
    // Cálculo do fatorial
    for (fat = 1; n > 1; n = n - 1) {
        fat = fat * n;
    }

    printf("%d \n", fat);

    return 0;
}
