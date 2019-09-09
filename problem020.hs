f :: Integer -> Integer
f 0 = 1
f n = n * f (n - 1)

sumdigits  :: Integer -> Integer
sumdigits i = sum $ map x $ show i where x c = read (c:"") :: Integer

main = print $ sumdigits $ f 100
