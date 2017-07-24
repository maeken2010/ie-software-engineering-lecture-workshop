-- 1
{-
ghciで以下のように定義して動くことを確認する
Prelude> let xyzw w = let x=1;y=2;z=3 in (x * y) + z + w
Prelude> xyzw 3
8
-}

-- 2
xyzw2 w = let x = 1
              y = 2
              z = 3
          in (x * y) + z + w

-- 3
xyzw3 w = (x * y) + z + w
    where x = 1
          y = 2
          z = 3

-- 4
xyzw4 w = (xyz 1 2 3) + w
    where xyz x y z = (x * y) + z