foldRight step zero (x:xs) = step x (foldRight step zero xs)
foldRight _ zero [] = zero

add a b = a + b
mySum x = foldRight add 0 x

-- meySum [1, 2, 3]
-- 计算过程:
-- 1 +                      foldRight + 0 [2, 3]
-- 1 + (2 +                 foldRight + 0 [3])
-- 1 + (2 + (3              foldRight + 0 []))

-- accumulate step 在右边结合, 从右加到左