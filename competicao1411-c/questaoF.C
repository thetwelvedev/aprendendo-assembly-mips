#include <stdio.h>

int main() {
    int indice, nota[4], total = 0;
    for (indice = 0; indice < 4; indice++) {
        printf("Valor %d: ", indice);
        scanf("%d", &nota[indice]);
    }

    printf("Valores informados: ");
    for (indice = 0; indice < 4; indice++) {
        printf("%d ", nota[indice]);
        total += nota[indice];
    }

    printf("\nMedia: %d\n", total / 4);

    return 0;
}
