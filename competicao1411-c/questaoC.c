#include <stdio.h>

int main(){
    int i;
    int j = 5;
    int s = 1;
    for (i = 0; i < j; i++)
    {
        s = s + i;
    }
    printf("s = %d", s);
    
}