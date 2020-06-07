foldLeft step zero (x:xs) = foldLeft step (step zero x) xs
foldLeft _ zero [] = zero


add a b = a + b
mySum xs = foldLeft add 0 xs

-- 计算过程: 函数求值时, 参数先计算, step zero x 首先计算
-- 1 +          foldLeft add 0 [2, 3]
-- 1 + 2 +      foldLeft add 0 [3]
-- 1 + 2 + 3 +  foldLeft add 0 []

-- accumulate step 在左边