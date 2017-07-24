fmap' :: (t -> t1) -> [t] -> [t1]
fmap' f [] = []
fmap' f (x:xs) = f x:fmap' f xs

{-
*Main > (fmap' show [1,2,3] ) ++ (fmap' show [4,5,6] )
["1","2","3","4","5","6"]
*Main > fmap' show ([1,2,3]++[4,5,6])
["1","2","3","4","5","6"]
-}