module P5 where

p5 :: [a] -> [a]
p5 = reverse

p5' :: [a] -> [a]
p5' = foldl (\ys y ->  y : ys) []

p5'' :: [a] -> [a]
p5'' = foldl (flip (:)) []
