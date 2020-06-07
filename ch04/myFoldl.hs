
myFoldl :: (a -> b -> a) -> a -> [b] -> a

-- 使用 foldr 表示 foldl, step 返回一个函数, accmulate 累积值为函数过程, 类似函数 compose 过程
myFoldl f z xs = foldr step id xs z
    where step x g a = g (f a x)

-- (f acc x)
-- (foldr f acc x)
-- id 即 accumulate 是一个函数
-- id :: a -> a

-- foldr step id xs
-- step x g -> a -> g (f a x) 返回一个函数, 将 f acc x 过程 accumulate

-- myFoldl + 0 [1, 2, 3]
-- (step 1 (step 2 (step 3 id)))
-- where stepFn a = g (f a x)
-- acc 初始值是 id, 累积值为 ...(step x (step x id))
-- step 1 g = a -> g (+ a 1)
-- step 1 (step 2 (step 3 id)) = a -> (step 2 (step 3 id)) (+ a 1)
-- step 3 id -> a -> id (+ a 3)
-- step 2 (a -> id (+ a 3)) -> id (+ (+ a 2) 3))
-- step 1 (a -> id (+ (+ a 2) 3))) -> id (+ (+ (+ a 1) 2) 3))

-- accumulate a = id (+ (+ (+ a 1) 2) 3))
-- (accumulate z)