intercalar :: [Int] -> [Int] -> [Int]
intercalar [] y = y
intercalar x [] = x
intercalar (a:x) (b:y)
    | a <= b = a : intercalar x (b:y)
    | otherwise = b : intercalar (a:x) y
