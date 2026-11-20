int nCr(int n, int r) {
	// base case
	if (r == 0 || r == n) return 1;
	if (r > n) return 0;

	// recursive case
	return nCr(n - 1, r - 1) + nCr(n - 1, r);
}
