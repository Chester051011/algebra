#include "algebra.h"
Matrix scan_matrix()
{
	int rows, cols;
	scanf("%d %d", &rows, &cols);
	Matrix x = Matrix(rows, cols);
	for (int i = 1; i <= rows; i++)
		for (int j = 1; j <= cols; j++)
			scanf("%lf", &x.a[i][j]);
	return x;
}
int main()
{
	while (1)
	{
		char op[2];
		scanf("%s", op);
		switch (op[0])
		{
		case '+':
		{
			Matrix a = scan_matrix();
			Matrix b = scan_matrix();
			Matrix c = add_matrix(a, b);
			print_matrix(c);
			break;
		}
		case '-':
		{
			Matrix a = scan_matrix();
			Matrix b = scan_matrix();
			Matrix c = sub_matrix(a, b);
			print_matrix(c);
			break;
		}
		case '*':
		{

			Matrix a = scan_matrix();
			Matrix b = scan_matrix();
			Matrix c = mul_matrix(a, b);
			print_matrix(c);
			break;
		}
		case '.':
		{
			Matrix a = scan_matrix();
			Matrix b = scale_matrix(a, 2.0);
			print_matrix(b);
			break;
		}
		case 't':
		{
			Matrix a = scan_matrix();
			Matrix b = transpose_matrix(a);
			print_matrix(b);
			break;
		}
		case 'd':
		{
			Matrix a = scan_matrix();
			double det = det_matrix(a);
			printf("%.2f\n", det);
			break;
		}
		case 'i':
		{
			Matrix a = scan_matrix();
			Matrix b = inv_matrix(a);
			print_matrix(b);
			break;
		}
		case 'r':
		{
			Matrix a = scan_matrix();
			int rank = rank_matrix(a);
			printf("%d\n", rank);
			break;
		}
		case 'j':
		{
			Matrix a = scan_matrix();
			double trace = trace_matrix(a);
			printf("%.2f\n", trace);
			break;
		}
		case 'q':
		{
			return 0;
		}
		default:
		{
			continue;
		}
		}
	}
	return 0;
}