-- proper sieve from The Genuine Sieve of Eratosthenes by Melissa E. O'Neill
primes = 2 : [x | x <- [3..], isprime x]
    where
        isprime x = all (\p -> x `mod` p > 0) $ totry x
        totry x = takeWhile (\p -> p * p <= x) primes

main = print $ sum $ takeWhile (< 2000000) primes
