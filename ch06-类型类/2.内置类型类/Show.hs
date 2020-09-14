-- :t show
-- show :: Show a => a -> String
-- show 是 Show 类型的一个重要方法
-- show 是一个打印方法, 任何类型都可以实现 show 方法, 返回一个字符窜
-- 实现 Color 类型 show 方法

data Color = Red | Green | Blue
instance Show Color where
    show Red = "Color 1: Red"
    show Green = "Color 2: Green"
    show Blue = "Color 3: Blue"