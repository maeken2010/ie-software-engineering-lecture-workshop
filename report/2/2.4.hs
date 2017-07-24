-- 1

-- 2
data Nodes a = Node a (Nodes a) (Nodes a) | Leaf a
   deriving (Show)

tree1 = (Node 1 (Node 2 (Leaf 3) (Leaf 4)) (Leaf 9))
tree2 = (Node 91 (Node 92 (Node 93 (Leaf 9) (Leaf 8)) (Node 94 (Node 95 (Leaf 11) (Leaf 12)) (Leaf 6))) (Node 96 (Leaf 1) (Node 97 (Leaf 2) (Leaf 3))))

flatten :: Num a => Nodes a -> [a]
flatten t = go t [] where
  go (Leaf a) xs     = a : xs
  go (Node x left right) xs = x : (go left (go right xs))