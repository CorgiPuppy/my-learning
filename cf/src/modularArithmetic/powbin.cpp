int findPow(int a, int b) {
	// base case
	if (b == 0) return 1;

	// recursive case
	int x = findPow(a, b / 2);
	int ans = 0;
	if (b % 2 == 1) ans = x * x * a;
	else ans = x * x;
	return ans;
}
