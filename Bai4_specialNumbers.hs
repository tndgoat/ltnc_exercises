-- Bai4_specialNumbers.hs

specialNumbers :: [Int]
specialNumbers = [x | x <- [1..100], x `mod` 7 == 0, x `mod` 5 /= 0]

main :: IO ()
main = print specialNumbers
