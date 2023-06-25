shift :: Int -> [Int] -> [Int]
shift a list
    | a >= 0 && a < length list = rotate a list
    | otherwise = error "posicação inválida"
    where
        rotate :: Int -> [Int] -> [Int]
        -- Casos bases
        rotate _ [] = []
        rotate 0  list = list

        -- recursividade
        rotate k (a:x) = rotate (k-1) (x ++ [a])
