distintos :: [Int] -> Bool

-- Caso base
distintos [] = True

--Validação se o elemento cabeça existe na lista e se é diferente do restante da lista ()
distintos (a:x) = not (existeElemento a x) && distintos x 

-- Crio o método de verificação do elemento na lista   
    where                                                 
        existeElemento :: Int -> [Int] -> Bool
        existeElemento _ [] = False
        existeElemento element (h:y)
            | element == h = True
            | otherwise = existeElemento element y
