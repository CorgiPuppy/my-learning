int factorial(int n) {
	// base case
	if (n == 0) return 1;

	// recursive case
	int y = 1;
	for (int i = 1; i <= n; i++)
		y *= i;
	return y;
}

int nCrUsingFactorial(int n, int r) {
	if (r == 0 || r == n) return 1;
	if (r > n) return 0;
	return factorial(n) / factorial(r) / factorial(n - r);
}
