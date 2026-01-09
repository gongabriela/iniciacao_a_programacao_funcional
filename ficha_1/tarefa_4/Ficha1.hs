module Ficha1 where

--1. Defina uma funcao que receba dois pares de inteiros e retorne um par de inteiros,
--sendo o primeiro elemento do par resultado a soma dos primeiros elementos dos pares
--de entrada, e o segundo elemento do par, o produto dos segundos elementos dos pares
--de entrada.

somaProduto :: (Int, Int) -> (Int, Int) -> (Int, Int)

somaProduto (a, b) (c, d) = (a + c, b * d)

--2. Escreva uma funcao que, dados tres numeros inteiros, retorne um par contendo no
--primeiro elemento o maior dos numeros, e no segundo elemento o segundo maior dos
--numeros.

doisMaiores :: Int -> Int -> Int -> (Int, Int)

doisMaiores x y z = 
    if x >= y && x >= z then (x, if y > z then y else z)
    else if y >= x && y >= z then (y, if x > z then x else z)
    else (z, if x > y then x else y)

--3. Escreva uma funcao que receba um triplo de numeros inteiros e retorne um triplo em
--que os mesmos numeros estao ordenados por ordem decrescente.

ordenaTriplo :: Int -> Int -> Int -> (Int, Int, Int)

ordenaTriplo x y z = 
    if x >= y && x >= z then
        if y >= z then (x, y, z)
        else (x, z, y)
    else if y >= x && y >= z then
        if x >= z then (y, x, z)
        else (y, z, x)
    else
        if x >= y then (z, x, y)
        else (z, y, x)
    
--4. Os lados de qualquer triangulo respeitam a seguinte restricao: a soma dos compri-
--mentos de quaisquer dois lados, e superior ao comprimento do terceiro lado. Escreva
--uma funcao que receba o comprimento de tres segmentos de recta e retorne um valor
--booleano indicando se satisfazem esta restricao.

triangulo :: Int -> Int -> Int -> Bool

triangulo x y z = x + y > z && y + z > x && z + x > y

--5. Escreva uma funcao abrev que receba uma string contendo nome de uma pessoa e
--retorne uma string com o primeiro nome e apelido1
--(e.g. (abrev ‘‘Joao Carlos Martins Sarmento’’)=’’Joao Sarmento’’)
--As funcoes, pre-definidas, words e unwords poderao ser-lhe uteis
-- •words :: String -> [String], da como resultado a lista das palavras (strings)
--de um texto (uma string)
-- •unwords :: [String] -> String, constroi um texto (uma string) a partir de
--uma lista de palavras (strings).
--1Considere que o apelido s o tem um nome.

abrev :: String -> String

abrev nome = head(words nome) ++ " " ++ last (words nome)
