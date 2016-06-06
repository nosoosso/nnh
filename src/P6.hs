module P6 where

p6 :: Eq a => [a] -> Bool
p6 list = list == reverse list
