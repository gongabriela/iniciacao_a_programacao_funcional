module GabrielaOliveira_1 where

{- take
    Remove os primeiros n elementos de uma lista e retorna uma nova lista com 
    esses elementos.
    EX.: take 3 [1, 2, 3, 4, 5] -> retorna [1, 2, 3]
-}
tirarElementos :: Int -> [a] -> [a]
tirarElementos n lista = take n lista

{- tail
    Remove o primeiro elemento de uma lista e retorna o restante.
    Ex.: tail [1, 2, 3, 4, 5] -> retorna [2, 3, 4, 5]
-}
removerPrimeiroElemento :: [a] -> [a]
removerPrimeiroElemento lista = tail lista

{-zipWith
    Combina duas listas aplicando uma função a cada par de elementos.
    A função recebe 3 argumentos: uma função e duas listas.
    Retorna uma lista com o resultado da função aplicada aos pares.
    ex.: 
    zipWith (+) [1,2,3] [4,5,6]
    -- 1+4=5, 2+5=7, 3+6=9
    -- Resultado: [5,7,9]

    zipWith (*) [1,2,3] [4,5,6]
    -- 1*4=4, 2*5=10, 3*6=18
    -- Resultado: [4,10,18]

    zipWith (++) ["Hello","Bye"] [" World"," Haskell"]
    -- "Hello"++" World", "Bye"++" Haskell"
    -- Resultado: ["Hello World","Bye Haskell"]

    zipWith max [1,5,3] [2,3,8]
    -- max(1,2)=2, max(5,3)=5, max(3,8)=8
    -- Resultado: [2,5,8]
-}
somaDePares :: [Int] -> [Int] -> [Int]
somaDePares listaUm listaDois = zipWith (+) listaUm listaDois 