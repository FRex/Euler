nums = [x | x <-[2520, 2520 * 2..], all (dividesby x) [11..20]]
    where dividesby a b = a `mod` b == 0

main = print $ head nums
