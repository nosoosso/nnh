module P3 where

p3 :: [a] -> Int -> a
p3 x n = x !! (n - 1)

p3' :: [a] -> Int -> a
p3' (x:_) 1 = x
p3' (_:xs) i = p3' xs (i - 1)
p3' _ _ = error "something wrong"
