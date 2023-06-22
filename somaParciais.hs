somaParciais :: [Int] -> [Int]

--Caso Base
somaParciais [] = []

--Insiro o primeiro elemento e gero uma lista percorrendo a lista do input e somo com 'a'
somaParciais (a:x) = a : [a + i | i <- somaParciais x] 

