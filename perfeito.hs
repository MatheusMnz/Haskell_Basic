-- Gero a lista com os fatores
fatores :: Int -> [Int]
fatores 0 = []
fatores n = [ i | i <- [1..n `div` 2], n `mod` i == 0 ]


-- percorro toda a lista gerada e somo todos os fatores
somaFatores :: Int -> Int
somaFatores n = somaLista (fatores n)
    where
        somaLista [] = 0
        somaLista (a:x) = a + somaLista x

     
perfeito :: Int -> Bool
perfeito n = somaFatores n == n
    

