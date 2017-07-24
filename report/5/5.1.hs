data Nodes a = Node a (Nodes a) (Nodes a) | Leaf a
   deriving (Show)

-- 1
f :: a -> Nodes a
f x = Leaf x

--2
-- fmapと同じ
nodesFmap :: (t -> a) -> (Nodes t -> Nodes a)
nodesFmap f (Leaf a) = (Leaf (f a))
nodesFmap f (Node a left right) = Node (f a) (nodesFmap f left) (nodesFmap f right)

-- 3
x = id (f 2)
x' = f (id 2)

y = id (nodesFmap (*2))
y' = nodesFmap (id (*2))
