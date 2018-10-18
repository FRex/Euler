sqr n = n * n

main = do
    let nums = [1..100]
    let a = sqr $ sum nums
    let b = sum $ map sqr nums
    print(a - b)
