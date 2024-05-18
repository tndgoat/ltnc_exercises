-- Bai1_separateSigns.hs

separateSigns :: [Int] -> ([Int], [Int])
separateSigns xs = (filter (< 0) xs, filter (> 0) xs)

main :: IO ()
main = do
    let numbers = [-10, 15, -3, 4, 0, -1, 6]
    let (negatives, positives) = separateSigns numbers
    putStrLn $ "Negative numbers: " ++ show negatives
    putStrLn $ "Positive numbers: " ++ show positives
