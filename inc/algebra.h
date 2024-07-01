#include <string.h>
#include <stdio.h>
#include <algorithm>
#include <math.h>
const int N = 30;
struct Matrix
{
	int n, m;
	double a[N][N];
	Matrix(int p, int q)
	{
		n = p, m = q;
		memset(a, 0, sizeof(a));
	}
	Matrix remainder_matrix(int x, int y)
	{
		Matrix c = Matrix(n - 1, m - 1);
		int ci = 0, cj;
		for (int i = 1; i <= n; i++)
		{
			if (i == x)
				continue;
			ci++, cj = 0;
			for (int j = 1; j <= m; j++)
			{
				if (j == y)
					continue;
				c.a[ci][++cj] = a[i][j];
			}
		}
		return c;
	}
};

Matrix add_matrix(Matrix x, Matrix y);
Matrix sub_matrix(Matrix x, Matrix y);
Matrix mul_matrix(Matrix x, Matrix y);
Matrix scale_matrix(Matrix x, double v);
Matrix transpose_matrix(Matrix x);
double det_matrix(Matrix x);
Matrix inv_matrix(Matrix x);
int rank_matrix(Matrix x);
double trace_matrix(Matrix x);
void print_matrix(Matrix x);

/*
*
3 3
1 2 3
4 5 6
7 8 9
3 3
9 8 7
6 5 4
3 2 1
d
3 3
1 2 3
4 5 6
7 8 8
i
3 3
1 2 3
4 5 6
7 8 8
q

*/