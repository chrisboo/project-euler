#include <bits/stdc++.h>
using namespace std;

const int MAXN = 1000005;

vector<int> primes;

int numDivisors[MAXN];

int main() {

    int ans = 0;

    numDivisors[1] = 1;
    for (int i = 2; i < MAXN; i++) {
        numDivisors[i] = 1;

        int n = i, div = 1;
        for (int j = 0; j < primes.size() && n == i; j++) {
            int p = primes[j];
            
            if (p * p > i) {
                break;
            }

            while (n % p == 0) {
                n /= p; div++;
            }
        }

        if (n == i) {
            primes.push_back(i);
            numDivisors[i] = 2;
        } else {
            numDivisors[i] = div * numDivisors[n];
        }

        if (i & 1) {
            ans = max(ans, numDivisors[i] * numDivisors[i/2]);
        } else {
            ans = max(ans, numDivisors[i/2] * numDivisors[i-1]);
        }

        if (ans > 500) {
            cout << (long long) i * (i-1) / 2 << endl;
            break;
        }
    }

    return 0;
}