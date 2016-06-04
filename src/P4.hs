module P4 where

p4 :: [a] -> Int
p4 = length

p4' :: [a] -> Int
p4' = foldl (\x _ -> x + 1) 0

p4'' :: [a] -> Int
p4'' x = go x 0 where
  go [] n = n
  go (y:ys) n = go ys $ n + 1
