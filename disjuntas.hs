disjuntas :: [Int] -> [Int] -> Bool

-- Casos base
disjuntas [] [] = False
disjuntas [] _ = True
disjuntas _ [] = True

-- Verificação nas listas
disjuntas (a:x) (b:y)
    | a == b = False
    | otherwise = disjuntas(a:x) y && disjuntas (b:y) x -- Chamo recursivamente e analiso se a lista x é disjunta em relação a outra lista
