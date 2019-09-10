fib = 1:1:(zipWith (+) fib $ tail fib)
is1000digit n = n > ((product $ take 999 [10,10..]) - 1)
main = print $ fst $ head $ filter (\(a, b) ->  is1000digit b) $ zip [1..] fib
