reverseL :: [t] -> [t]
reverseL [] = []
reverseL (a:x) = reverse x ++ [a]

palindromo :: [Int] -> Bool
palindromo palavra = palavra == reverseL palavra