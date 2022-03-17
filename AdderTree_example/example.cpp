#include <stdio.h>

#define LEN 64
#define LARGE_N 8
#define MAX_L 8
#define BLOCK 4
void adder_tree_large(int a[MAX_L][LEN], int b[MAX_L][LEN], int c[MAX_L][LEN], int n)
{
#pragma HLS array_partition variable=a dim=1 complete
#pragma HLS array_partition variable=b dim=1 complete
#pragma HLS array_partition variable=c dim=1 complete
	int i, bl, it;
	int tmp[MAX_L];
#pragma HLS array_partition variable=tmp dim=0 complete
	for(it=0; it<n; it++) {
#pragma HLS loop_tripcount max=32 min=32
#pragma HLS pipeline
#pragma HLS latency min=1 max=1
		for(i=0;i<LARGE_N;i++)
		{
			#pragma HLS unroll
			tmp[i] = a[i][it] * b[i][it];
		}

		c[0][it] = 0;
		for(i=0;i<LARGE_N;i++)
		{
			#pragma HLS unroll
			c[0][it] += tmp[i];
		}
		/*for(i=0;i<LARGE_N/BLOCK;i++)
		{
			#pragma HLS unroll
			int tt = 0;
			for(bl=0;bl<BLOCK;bl++) {
				#pragma HLS unroll
				tt += tmp[i*BLOCK+bl];
			}
			c[i][it] = tt;
		}*/
	}
}
