-- 内置 filter
-- filter :: (a -> Bool) -> [a] -> [a]
-- filter p [] = []
-- filter p (x:xs)
--     | p x       = x : filter p xs
--     | otherwise = filter p xs


myFilter p (x:xs) = 
myFilter p [] = []