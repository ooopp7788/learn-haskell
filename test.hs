main = do
    putStrLn "Greetings!  What is your name?"
    inpStr <- getLine
    putStrLn $ inpStr
    putStrLn $ "Welcome to Haskell, " ++ inpStr ++ "!"