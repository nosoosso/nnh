module P2 where

p2 :: [a] -> Maybe a
p2 [] = Nothing
p2 [x] = Nothing
p2 [x,_] = Just x
p2 (_:xs) = p2 xs
