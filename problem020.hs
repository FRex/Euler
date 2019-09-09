sumdigits i = sum $ map x $ show i where x c = read [c]
main = print $ sumdigits $ foldr (*) 1 [1..100]
