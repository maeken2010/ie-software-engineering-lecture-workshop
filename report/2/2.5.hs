-- treeのFunctorとApplicative
-- Applicativeは本当にこれでいいんか？

data Nodes a = Node a (Nodes a) (Nodes a) | Leaf a
  deriving (Show)

instance Functor Nodes where
  fmap f (Leaf a) = (Leaf (f a))
  fmap f (Node a left right) = Node (f a) (fmap f left) (fmap f right)

instance  Applicative Nodes where
  pure a = (Leaf a)
  (<*>) (Leaf f) (Leaf a) = (Leaf (f a))
  (<*>) (Node f leftF rightF) (Node a left right) = (Node (f a) (leftF <*> left) (rightF <*> right))
  