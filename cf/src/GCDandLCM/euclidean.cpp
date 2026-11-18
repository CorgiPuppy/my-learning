int gcd(int a, int b) {
	// base case
	if (b == 0) return a;

	// recursive case
	return gcd(b, a % b);
}
