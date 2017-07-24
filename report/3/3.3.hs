l1 = \a -> a

l2 = \a -> (\b -> a)

l3 = \f -> (snd f)  (fst f)

l4 = \b -> ((\a->b),b)
