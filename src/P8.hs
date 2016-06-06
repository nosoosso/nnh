module P8 where

import Data.List (group)

p8 :: (Eq a) => [a] -> [a]
p8 = foldl removeDuplicated [] where
  removeDuplicated [] l = [l]
  removeDuplicated acc l =
    if last acc == l
      then acc
      else acc ++ [l]

p8' :: (Eq a) => [a] -> [a]
p8' = reverse . foldl removeDuplicated [] where
  removeDuplicated [] l = [l]
  removeDuplicated acc l =
    if head acc == l
      then acc
      else l : acc

p8'' :: (Eq a) => [a] -> [a]
p8'' list =
  let grouped = group list in
  foldl (\acc l -> acc ++ [head l]) [] grouped

p8''' ::  (Eq a) => [a] -> [a]
p8''' = map head . group
