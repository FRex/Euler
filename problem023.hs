import Data.Set (toList, fromList)

uniq = toList . fromList
limit = 28123
divisors n = filter (\x -> n `mod` x == 0) [1..(n `div` 2)]
abundants = filter isit [1..limit] where isit n = n < (sum $ divisors n)
hehe = uniq [x + y | x <- abundants, y <- abundants, x + y <= limit]
allsum = sum $ [1..limit]
main = print $ (allsum - (sum hehe))
