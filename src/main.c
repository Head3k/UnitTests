#include <stdio.h>
#include "func.h"

int main(){
	int a,b,c;
	printf("Hi\n");
	scanf("\n%d", &a);
	scanf("%d", &b);
	c = func(a,b);
	printf("c == %d\n",c);
}
