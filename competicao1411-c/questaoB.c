#include <stdio.h>

int main(){
    int i, j;
    j = 12;
    scanf("%d", &i);
    if( i < j ){
        j = 2*i + 8;
        printf("j = %d", j);
    } else {
        j = i*8 + j*6 + 12 ;
        printf("j = %d", j);
    }
}