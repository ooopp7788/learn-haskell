class BasicEq a where
    isEq:: a -> a -> Bool

instance BasicEq Bool where
    isEq True True = True
    isEq False False = True
    isEq _ _ = False