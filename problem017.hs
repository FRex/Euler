numberName :: Integer -> String
numberName 1000 = "one thousand"

numberName 0 = ""
numberName 1 = "one"
numberName 2 = "two"
numberName 3 = "three"
numberName 4 = "four"
numberName 5 = "five"
numberName 6 = "six"
numberName 7 = "seven"
numberName 8 = "eight"
numberName 9 = "nine"

numberName 10 = "ten"
numberName 11 = "eleven"
numberName 12 = "twelve"
numberName 13 = "thirteen"
numberName 14 = "fourteen"
numberName 15 = "fifteen"
numberName 16 = "sixteen"
numberName 17 = "seventeen"
numberName 18 = "eighteen"
numberName 19 = "nineteen"

numberName 20 = "twenty"
numberName 30 = "thirty"
numberName 40 = "forty"
numberName 50 = "fifty"
numberName 60 = "sixty"
numberName 70 = "seventy"
numberName 80 = "eighty"
numberName 90 = "ninety"

numberName 100 = "one hundred"
numberName 200 = "two hundred"
numberName 300 = "three hundred"
numberName 400 = "four hundred"
numberName 500 = "five hundred"
numberName 600 = "six hundred"
numberName 700 = "seven hundred"
numberName 800 = "eight hundred"
numberName 900 = "nine hundred"

numberName x = if x > 100 then numberName (100 * (x `div` 100)) ++ " and " ++ numberName (x `mod` 100)
               else numberName (10 * (x `div` 10)) ++ "-" ++ numberName (x `mod` 10)

mylen :: String -> Integer
mylen "" = 0
mylen (a:as) = (if (a == ' ') || (a == '-') then 0 else 1) + mylen as

main = print $ sum $ map mylen $ map numberName $ take 1000 [1..1000]
