d n = sum $ filter (\x -> n `mod` x == 0) [1..(n - 1)]
amicable n = n /= m && n == d m where m = d n
main = print $ sum $ filter amicable [1..9999]
