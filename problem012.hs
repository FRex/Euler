countDivisors :: Int -> Int
countDivisors n = length [1 | x <- [1..n], n `mod` x == 0]

pairs :: [(Int, Int)]
pairs = zip [1..] [2..]

makeTriangle :: (Int, Int) -> Int
makeTriangle (a, b) = (a * b) `div` 2

pairPower :: (Int, Int) -> Int
pairPower (a, b) = x * y
    where
        x = countDivisors a
        y = countDivisors b

x :: [(Int, Int, Int)]
x = zip3 (map pairPower pairs) (map makeTriangle pairs) (map (countDivisors . makeTriangle) pairs)

fst3 (a, b, c) = a
snd3 (a, b, c) = b
trd3 (a, b, c) = c

y = filter (\a -> fst3 a > 490) $ x
z = filter (\a -> trd3 a > 500) $ y

main = do
    print $ snd3 $ head z
