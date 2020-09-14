-- putStrLn :: String -> IO ()
-- getLine :: IO String

str2message :: String -> String
str2message input = "Data: " ++ input

-- compose putStrLn str2message
str2action :: String -> IO ()
str2action = putStrLn . str2message

numbers :: [Int]
numbers = [1..10]

main = do str2action "Start of the program"
          mapM_ (str2action . show) numbers
          str2action "Done!"


-- map Monad
-- mapM_ :: (Monad m) => (a -> m b) -> [a] -> m ()   -- 无返回值
-- mapM  :: (Monad m) => (a -> m b) -> [a] -> m [b]  -- 返回处理后的列表 m [b]
-- 在 IO 例子中 m 就是 IO

-- 串联

-- 代替 do 操作, 丢弃前面步骤的结果
-- :type (>>)
-- (>>) :: (Monad m) => m a -> m b -> m b

-- 
-- :type (>>=)
-- (>>=) :: (Monad m) => m a -> (a -> m b) -> m b