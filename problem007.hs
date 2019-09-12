primes = siv [2..] where siv (x:xs) = x : siv [y | y <- xs, y `mod` x /= 0]

main = print $ primes !! 10000
