int findPowMod(int a, int b, int m) {
	// base case
	if (b == 0) return 1;

	// recursive case
	int x = findPow(a, b / 2, m) % m;
	int ans = 0;
	if (b % 2 == 1) {
		ans = ((x % m) * (x % m)) % m;
		ans = ((ans % m) * (a % m)) % m;
	}
	else ans = ((x % m) * (x % m)) % m;
	return ans;
}
