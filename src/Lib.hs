module Lib where

p1 :: [a] -> Maybe a
p1 [] = Nothing
p1 [x] = Just x
p1 (_:xs) = p1 xs
