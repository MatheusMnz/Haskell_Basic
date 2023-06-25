removerFim :: Int -> [Int] -> [Int]
removerFim init_index list
    | init_index <= 0 || init_index > length list = error "Índice inválido"
    | otherwise = removerNUltimos init_index list

removerNUltimos :: Int -> [Int] -> [Int]
removerNUltimos _ [] = []
removerNUltimos n list
    | n <= 0 = list
    | otherwise = removerNUltimos (n - 1) (removerUltimo list)

removerUltimo :: [Int] -> [Int]
removerUltimo [] = []
removerUltimo (a:x) = a : removerUltimo x 