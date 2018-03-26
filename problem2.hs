fib = 1 : 1 : zipWith (+) fib (tail fib)

main = do
    let smallfib = takeWhile (<= 4000000) fib
    let eterms = [n | n <- smallfib, n `mod` 2 == 0]
    print $ sum eterms
