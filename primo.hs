primo :: Int -> Bool
primo number
    | number < 2 = False
    | otherwise = null[x | x <- [2..number-1], number `mod` x == 0]


-- Caso base
-- Se número maior que 2, gero uma lista de todos os valores até  n-1 que
-- geram uma divisão com resto zero. Verifico se a lista é vazia, se for
-- retorno True, caso contrário False.
