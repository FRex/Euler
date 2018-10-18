tups = [a * b * (1000 - a - b) | a <- [1..500], b <- [1..499], a * a + b * b == (1000 - a - b) * (1000 - a - b)]

main = do
    print $ head tups
