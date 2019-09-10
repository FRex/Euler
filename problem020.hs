sumdigits i = sum $ map x $ show i where x c = read [c]
main = print $ sumdigits $ product [1..100]
