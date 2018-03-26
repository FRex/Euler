ispalindrome n = reverse (show n) == show n

main = do
    let tridigitnums = [100..999]
    let pairs = [(a, b) | a <- tridigitnums, b <- tridigitnums, a /= b]
    let nums = map (\(a, b) -> a * b) pairs
    let pals = filter ispalindrome nums
    print $ maximum pals
