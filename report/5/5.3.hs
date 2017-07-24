data Nodes a = Node a (Nodes a) (Nodes a) | Leaf a
   deriving (Show)

instance Functor Nodes where
  fmap f (Leaf a) = (Leaf (f a))
  fmap f (Node a left right) = Node (f a) (fmap f left) (fmap f right)

tree = Node 2 (Node 3 (Leaf 4) (Leaf 5)) (Node 6 (Node 7 (Leaf 8) (Leaf 9)) (Leaf 10))
treeNN = Node (Node 9 (Leaf 2) (Leaf 3)) (Leaf (Node 7 (Leaf 8) (Leaf 4)))  (Leaf (Node 10 (Leaf 3) (Leaf 7)))

fmapNN :: (a -> b) -> Nodes (Nodes a) -> Nodes (Nodes b)
fmapNN f (Leaf a) = Leaf (fmap f a)
fmapNN f (Node a b c) = Node (fmap f a) (fmapNN f b) (fmapNN f c)

muList :: [[t]] -> [t]
muList [] = []
muList (x:xs) = x ++ muList xs

fmapMu :: (a -> b) -> [[a]] -> [[b]]
fmapMu f x = fmap (fmap f) x