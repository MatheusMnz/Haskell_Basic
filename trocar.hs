trocar :: Int -> [Int]
trocar valor
    | valor <= 0 = []
    | valor >= 100 = trocar (valor - 100) ++ [100]
    | valor >= 50 = trocar (valor - 50) ++ [50]
    | valor >= 10 = trocar (valor - 10) ++ [10]
    | valor >= 5 = trocar (valor - 5) ++ [5]
    | otherwise = trocar (valor - 1) ++ [1]
