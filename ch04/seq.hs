foldl' _ zero [] = zero
foldl' step zero (x:xs) =
    let new = step zero x
    -- `seq` 中置运算符, 强制对 new 求值
    in new `seq` foldl' step new xs