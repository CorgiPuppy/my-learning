#include <iostream>
#include <vector>
using namespace std;
vector<int> sieve(int n) {
	vector<int> primes(n + 1, true);
	primes[0] = false;
	primes[1] = false;
	for (int i = 2; i * i <= n; i++)
		if (primes[i])
			for (int j = i * i; j <= n; j += i)
				primes[j] = false;
	return primes;
}
int main() {
	int n;
	cin >> n;
	vector<int> primes = sieve(n);
	for (int i = 0; i <= n; i++)
		if (primes[i]) cout << i << " is a primer." << endl;
		else cout << i << " isn't a primer." << endl;
	return 0;
}
