collatzLength 1 = 1
collatzLength n = 1 + (collatzLength $ col n) where
    col n = if even n then (n `div` 2) else (n * 3 + 1)

lenAndArg n = (n, collatzLength n)
nums = map lenAndArg [1..1000000]

biggerTuple2 a b = if snd a > snd b then a else b

maximum2 (x:[]) = x
maximum2 (x:xs) = biggerTuple2 x $ maximum2 xs

main = do
    print $ fst $ maximum2 nums
