module Fib where

-- Minha resolução utilizando as funções take, tail e zipWith ------------------------------------
{-
seqFib :: Int -> [Int]

seqFib n = aux n
    where
        aux 0 = [0]
        aux 1 = [0, 1]
        --somar os ultimos dois numeros e concatenar no fim da lista!
        aux n =
            let lista = aux (n - 1)
                ultimos = take 2 (reverse lista) --reverse inverte a lista e o take pega os dois ultimos elementos
                soma = zipWith (+) ultimos (reverse ultimos) --soma
            in lista ++ [head soma] --adiciona o resultado na lista

-}

-- Resolucao do prof:----------------------------------------------------------------------------

seqFib :: Int -> [Int]
seqFib n = take (n + 1) lista
    where
        lista = 0:1:zipWith (+) lista (tail lista)

{- Explicação teórica da resolução:

    CONCEITO PRINCIPAL: Lazy Evaluation (Avaliação Preguiçosa)
    
    Em Haskell, nada é calculado até ser necessário. Portanto, a "recursão" aqui
    não é uma recursão tradicional, mas sim uma REFERÊNCIA CIRCULAR:
    
    - 'lista' depende de si mesma
    - Quando você pede um elemento de 'lista' que ainda não foi calculado, 
      Haskell busca na definição de 'lista' (lista = 0:1:zipWith (+) lista (tail lista))
    - A definição usa 'lista' e 'tail lista' novamente, forçando o cálculo de novos elementos

    EXPLICAÇÃO DO CÓDIGO:

    take (n + 1) lista
      -> Pega apenas os primeiros (n + 1) elementos da lista INFINITA
      -> Sem 'take', a lista seria infinita!

    0:1:zipWith (+) lista (tail lista)
      -> 0:1: é o operador cons (:) que constrói a lista começando com [0, 1, ...]
      -> zipWith (+) soma elemento a elemento de duas listas

    COMO A RECURSÃO FUNCIONA:

    Lidamos com DUAS LISTAS:
    - lista:        [0, 1, ?,  ?,  ...]
    - tail lista:   [1, ?,  ?,  ...]
    
    zipWith (+) faz a soma dos pares:
    - 1º par:  0 + 1 = 1   → 3º elemento
    - 2º par:  1 + 1 = 2   → 4º elemento
    - 3º par:  1 + 2 = 3   → 5º elemento
    - 4º par:  2 + 3 = 5   → 6º elemento
    
    RESULTADO FINAL: [0, 1, 1, 2, 3, 5, 8, 13, ...]

-}