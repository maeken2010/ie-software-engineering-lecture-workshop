-- treeのFunctorとApplicative
-- Applicativeは本当にこれでいいんか？

data Nodes a = Node a (Nodes a) (Nodes a) | Leaf a
  deriving (Show)

tree = Node 1 (Node 3 (Leaf 4) (Leaf 5)) (Leaf 6)
treeF = Node (*2) (Node (*4) (Leaf (*5)) (Leaf (*3))) (Leaf (*10))

instance Functor Nodes where
  fmap f (Leaf a) = (Leaf (f a))
  fmap f (Node a left right) = Node (f a) (fmap f left) (fmap f right)

instance  Applicative Nodes where
  pure a = (Leaf a)
  (<*>) (Leaf f) (Leaf a) = (Leaf (f a))
  (<*>) (Node f leftF rightF) (Node a left right) = (Node (f a) (leftF <*> left) (rightF <*> right))
  
