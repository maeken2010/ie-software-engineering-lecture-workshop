comp :: (a -> b) -> (b -> c) -> a -> c
comp f g = g.f

{-
ghciで以下のように実行して成り立つことを確かめる
*Main> (comp (*2) (+2)) 3
8
*Main> (comp (++"d") (++"e")) "abc"
"abcde"
-}