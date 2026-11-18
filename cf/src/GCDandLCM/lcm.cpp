int gcd(int a, int b) {
	// base case
	if (b == 0) return a;

	// recursive case
	return gcd(b, a % b);
}
int lcm(int a, int b) {
	return (a * b) / gcd(a, b);
}
