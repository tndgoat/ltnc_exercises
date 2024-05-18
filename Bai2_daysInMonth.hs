-- Bai2_daysInMonth.hs

isLeapYear :: Int -> Bool
isLeapYear year
    | (year `mod` 400 == 0) = True
    | (year `mod` 100 == 0) = False
    | (year `mod` 4 == 0) = True
    | otherwise = False

daysInMonth :: Int -> Int -> Int
daysInMonth month year
    | month == 2 = if isLeapYear year then 29 else 28
    | month `elem` [4, 6, 9, 11] = 30
    | month `elem` [1, 3, 5, 7, 8, 10, 12] = 31
    | otherwise = error "Tháng không hợp lệ"

main :: IO ()
main = do
    print $ daysInMonth 2 2024
    print $ daysInMonth 5 2019
    print $ daysInMonth 8 2012
    print $ daysInMonth 11 2022
