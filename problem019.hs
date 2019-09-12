data Weekday = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday deriving (Show, Eq)

nextWeekday :: Weekday -> Weekday
nextWeekday Monday = Tuesday
nextWeekday Tuesday = Wednesday
nextWeekday Wednesday = Thursday
nextWeekday Thursday = Friday
nextWeekday Friday = Saturday
nextWeekday Saturday = Sunday
nextWeekday Sunday = Monday

lastDayOfYear (31, 12, _) = True
lastDayOfYear _ = False

isLeapYear y = (y `mod` 4 == 0) && (y `mod` 100 /= 0 || y `mod` 400 == 0)

lastDayOfMonth (d, m, y)
    | m == 2 && isLeapYear y = d == 29
    | m == 2 && not (isLeapYear y) = d == 28
    | m `elem` [4, 6, 9, 11] = d == 30
    | otherwise = d == 31

nextDay :: (Int, Int, Int) -> (Int, Int, Int)
nextDay day@(d, m, y)
    | lastDayOfYear day = (1, 1, y + 1)
    | lastDayOfMonth day = (1, m + 1, y)
    | otherwise = (d + 1, m, y)

days d = d:(days $ nextDay d)
weekdays w = w:(weekdays $ nextWeekday w)

both = drop 365 $ zip (weekdays Monday) (days (1, 1, 1900))

lastDayOf2000 day@(d, m, y) = y == 2000 && lastDayOfYear day

sundayFirstDayOfMonth :: (Weekday, (Int, Int, Int)) -> Bool
sundayFirstDayOfMonth (Sunday, (1, _, _)) = True
sundayFirstDayOfMonth _ = False

main = print $ length $ filter sundayFirstDayOfMonth $ takeWhile (\(_, x) -> not (lastDayOf2000 x)) both
