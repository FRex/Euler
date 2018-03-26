import Data.List (find)

divisors 0 = []
divisors 1 = []
divisors n = d:(divisors $ n `div` d)
    where
        d = surefind (dividesby n) (2:[3,5..])
        dividesby a b = a `mod` b == 0
        surefind a b = case find a b of Just n -> n

main = do
    let n = 600851475143
    print $ maximum $ divisors n
