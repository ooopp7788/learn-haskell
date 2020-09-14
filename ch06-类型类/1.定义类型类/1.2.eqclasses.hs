-- 1 class 关键字声明 类型类
-- 与面向对象中 interface 类似, 定义接口类型
-- a 是模板类型
class BasicEq a where
    isEq:: a -> a -> Bool

-- 2 instance 关键字实现 类型 中的方法
-- 与 implements 类似

-- 2.1 Bool 类型 实现 isEq 方法
instance BasicEq Bool where
    isEq True True = True
    isEq False False = True
    isEq _ _ = False

instance BasicEq String where
    isEq "" "" = True
    isEq (a: as) (b: bs) = (charEq a b) && (isEq xax bs)
    isEq _ _ = False
    where
        charEq a b = a == b
        charEq _ _ = False