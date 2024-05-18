-- Bai3_transform.hs

transform :: [Int] -> [Int]
transform xs = map (* 3) (filter even xs)

main :: IO ()
main = do
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let transformedNumbers = transform numbers
    print transformedNumbers
