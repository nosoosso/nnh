module P7 where

data NestedList a = Elem a | List [NestedList a]

p7 :: NestedList a -> [a]
p7 (Elem x) = [x]
p7 (List x) = foldl (\acc l -> acc ++ p7 l) [] x
