#include <stdio.h>
#include <stdlib.h>

#define LARGE_N 8
#define MAX_L 100
int adder_tree_large(int a[MAX_L], int b[MAX_L]);

int main()
{
	int a[MAX_L], b[MAX_L], c;
	for(int i=0;i<LARGE_N;i++) a[i] = rand()%256;
	for(int i=0;i<LARGE_N;i++) b[i] = rand()%256;

	c = adder_tree_large(a,b);

	int gold = 0;
	for(int i=0;i<LARGE_N;i++){ gold += a[i]*b[i]; }
	if(c!=gold) { printf("Error: ans=%d, gold=%d\n",c, gold); return 1; }
	return 0;
}
