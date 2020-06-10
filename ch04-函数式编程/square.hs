loop (x:xs) = x * x : (loop xs)
loop [] = []