module Fibonacci where

fibonacci :: Int -> Int

fibonacci index = 
    if index < 0 then -1
    else if index == 0 then 0
    else if index == 1 || index == 2 then 1
    else fibonacci (index - 1) + fibonacci (index - 2)