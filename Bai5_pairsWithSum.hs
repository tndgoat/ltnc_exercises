-- Bai5_pairsWithSum.hs

pairsWithSum :: Int -> [Int] -> [(Int, Int)]
pairsWithSum total xs = [(x, y) | x <- xs, y <- xs, x < y, x + y == total]

main :: IO ()
main = do
    let total = 10
    let numbers = [1, 2, 3, 7, 8, 9, 10]
    let pairs = pairsWithSum total numbers
    print pairs
