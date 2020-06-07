mySum (xs) = helper 0 xs
helper acc (x:xs) = helper (acc + x) xs
helper acc [] = acc