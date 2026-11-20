int factorial(int n) {
	// base case
	if (n == 0) return 1;

	// recursive case
	int y = 1;	
	for (int i = 1; i <= n; i++)
		y *= i;
	return y;
}
