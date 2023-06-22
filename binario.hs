-- Meu n vai sempre sendo dividido por 2 até os casos bases
-- Concateno na lista os restos da divisão

binario :: Int -> [Int]
binario 0 = [0]
binario 1 = [1]
binario n = binario (n `div` 2) ++ [n `mod` 2]