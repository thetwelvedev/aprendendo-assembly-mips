#include <stdio.h>

void calculateSum(int x, int y) {
    int sum = x + y;
    printf("The sum of x + y is: %d\n", sum);
}

int main() {
    int a, b;

    scanf("%d", &a);
    scanf("%d", &b);

    calculateSum(a, b); 

    return 0;
}
