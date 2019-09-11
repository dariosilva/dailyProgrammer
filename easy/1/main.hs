import System.IO

main = do
    putStrLn "What is your name?"
    name <- getLine
    putStrLn "How old are your?"
    age <- getLine
    putStrLn "What is your reddit username?"
    username <- getLine
    putStrLn ("your name is " ++ name ++ ", you are " ++ age ++ " years old, and your username is " ++ username)