import Data.List(sort)
import Data.Char(ord)

tr '"' = ' '
tr ',' = ' '
tr c = c

wordSum w = sum $ map (\x -> (ord x) - (ord 'A') + 1) w

main = do
    txt <- readFile "p022_names.txt"
    let names = sort $ words $ map tr txt
    let numberedNames = zip [1..] names
    let scores = map (\(x, y) -> x * wordSum y) numberedNames
    print $ sum scores
