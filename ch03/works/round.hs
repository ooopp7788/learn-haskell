roundList [] = []
roundList (x:xs) = (x:(roundList xs) ++ [x])