-- 模式匹配
-- (1:[]) = [1]
-- (1:[2,3,4]) = [1,2,3,4]
sumList (x:xs) = x + sumList xs
sumList [] = 0