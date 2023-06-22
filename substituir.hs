--             a      b     list     list
substituir :: Int -> Int -> [Int] -> [Int]
substituir _ _ [] = []
substituir a b (c:x)
    | c == a    = b:substituir a b x
    | otherwise = c:substituir a b x


-- [1,2,1,3,1]
-- Recebo uma lista e desejo trocar os elementos a por b
