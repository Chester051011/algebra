#include "algebra.h"

Matrix add_matrix(Matrix x, Matrix y)
{
	if (x.n != y.n || x.m != y.m)
		return Matrix(0, 0);
	int n = x.n, m = x.m;
	Matrix z = Matrix(x.n, x.m);
	for (int i = 1; i <= n; i++)
	{
		for (int j = 1; j <= m; j++)
		{
			z.a[i][j] = x.a[i][j] + y.a[i][j];
		}
	}
	return z;
}

Matrix sub_matrix(Matrix x, Matrix y)
{
	if (x.n != y.n || x.m != y.m)
		return Matrix(0, 0);
	int n = x.n, m = y.m;
	Matrix z = Matrix(n, m);
	for (int i = 1; i <= n; i++)
		for (int j = 1; j <= m; j++)
			z.a[i][j] = x.a[i][j] - y.a[i][j];
	return z;
}

Matrix mul_matrix(Matrix x, Matrix y)
{
	if (x.m != y.n)
		return Matrix(0, 0);
	int n = x.n, m = y.m, l = x.m;
	Matrix z = Matrix(n, m);
	for (int i = 1; i <= n; i++)
		for (int j = 1; j <= m; j++)
			for (int k = 1; k <= l; k++)
				z.a[i][j] += x.a[i][k] * y.a[k][j];
	return z;
}

Matrix scale_matrix(Matrix x, double v)
{
	int n = x.n, m = x.m;
	Matrix z = Matrix(n, m);
	for (int i = 1; i <= n; i++)
		for (int j = 1; j <= m; j++)
			z.a[i][j] = x.a[i][j] * v;
	return z;
}

double trace_matrix(Matrix x)
{
	if (x.n != x.m)
		return 0.0;
	double trace = 0.0;
	for (int i = 1; i <= x.n; i++)
		trace += x.a[i][i];
	return trace;
}

Matrix transpose_matrix(Matrix x)
{
	int n = x.n, m = x.m;
	Matrix z = Matrix(m, n);
	for (int i = 1; i <= n; i++)
		for (int j = 1; j <= m; j++)
			z.a[j][i] = x.a[i][j];
	return z;
}
double det_matrix(Matrix x)
{
	if (x.n != x.m)
		return 0.0;
	if (x.n == 1)
		return x.a[1][1];
	double det = 0;
	int n = x.n;
	for (int i = 1, z = 1; i <= n; i++)
	{
		det += z * x.a[i][1] * det_matrix(x.remainder_matrix(i, 1));
		z *= -1;
	}
	return det;
}
Matrix inv_matrix(Matrix x)
{
	if (det_matrix(x) == 0.0)
		return Matrix(0, 0);
	int n = x.n;
	Matrix adj = Matrix(n, n);
	Matrix inv = Matrix(n, n);
	double det = det_matrix(x);

	for (int i = 1; i <= n; i++)
	{
		for (int j = 1; j <= n; j++)
		{
			Matrix minor = x.remainder_matrix(i, j);
			adj.a[j][i] = pow(-1, i + j) * det_matrix(minor);
		}
	}

	for (int i = 1; i <= n; i++)
		for (int j = 1; j <= n; j++)
			inv.a[i][j] = adj.a[i][j] / det;

	return inv;
}

int rank_matrix(Matrix x)
{
	int n = x.n;
	int m = x.m;
	int rank = 0;
	Matrix temp = x;

	for (int row = 1; row <= n; row++)
	{
		if (temp.a[row][row] != 0)
		{
			rank++;
			for (int col = 1; col <= m; col++)
			{
				if (col != row)
				{
					double factor = temp.a[col][row] / temp.a[row][row];
					for (int i = 1; i <= m; i++)
						temp.a[col][i] -= factor * temp.a[row][i];
				}
			}
		}
		else
		{
			bool reduced = false;
			for (int i = row + 1; i <= n; i++)
			{
				if (temp.a[i][row] != 0)
				{
					for (int j = 1; j <= m; j++)
						std::swap(temp.a[row][j], temp.a[i][j]);
					reduced = true;
					break;
				}
			}
			row -= reduced;
		}
	}

	return rank;
}

void print_matrix(Matrix x)
{
	if (x.n == 0)
	{
		puts("ERROR");
		return;
	}
	int n = x.n, m = x.m;
	for (int i = 1; i <= n; i++)
	{
		for (int j = 1; j <= m; j++)
			printf("%.2lf ", x.a[i][j]);
		puts("");
	}
}