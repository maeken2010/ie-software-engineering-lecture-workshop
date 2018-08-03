f0 :: t -> t
f0 x = x

f1 :: t -> (t1 -> t) -> t
f1 x f = x

-- これはむり
-- 引数にt2があればできる
-- f2 :: (t2 -> t1) -> (t1 -> t) -> t

f3 :: t -> t -> t
f3 x y = x

f4 :: ( t -> t ) -> t
f4 f = f(f4(\x -> x))

