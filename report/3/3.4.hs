elim :: (a -> c) -> (b -> c) -> (Either a b) -> c
elim f g (Left x) = f x
elim f g (Right x) = g x

l1 = \a -> Left a

l2 = \a -> Right a

l3 = \f -> elim (\a -> a) (\a -> a) f

l4 = \f -> elim (\g -> (\a -> Left (g a))) (\h -> (\a -> Right (h a)))  f