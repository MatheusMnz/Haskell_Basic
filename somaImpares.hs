impar :: Int -> Bool
impar x = (x `mod` 2) == 1

somaImpares :: [Int] -> Int
somaImpares [] = 0
somaImpares (a:x)
  | impar a = a + somaImpares x
  | otherwise = somaImpares x



-- | a = 1
-- | x = [3, 2, 7, 4, 6, 5]
-- 1 + somaImpares[3,2,7,4,6,5]
--     | a = 3
--     | x = [2,7,4,6,5]
--     3 + somaImpares[2,7,4,6,5]
--         | a = 2
--         | x = [7,4,6,5]
--             somaImpares
--                 | a = 7
--                 | x = [4,6,5]
--                     7 + somaImpares
--                         | a = 4
--                         | x = [6,5]
--                           somaImpares
--                             | a = 6
--                             | x = [5]
--                                 5 + somaImpares -> caso base = 0
