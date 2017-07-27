primes :: Integral a => [a]
primes = 2 : primes'
    where isPrime (p:ps) n = p * p > n || n `rem` p /= 0 && isPrime ps n
          primes' = 3 : filter (isPrime primes') [5, 7 ..]

largestPrimeFactor :: Integral a => [a] -> a -> a
largestPrimeFactor (p:ps) n = 
    if n == p 
        then p 
    else if n `rem` p == 0 
        then largestPrimeFactor (p:ps) (quot n p) 
    else largestPrimeFactor ps n

main = do
    print $ largestPrimeFactor primes 600851475143