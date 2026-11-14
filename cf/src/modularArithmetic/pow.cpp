findPow(int a, int b) {
	int x = 1; 
	for (int i = 1; i <= b; i++)
		x *= a;
	return x;
}
