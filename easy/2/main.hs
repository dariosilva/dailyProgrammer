import System.IO

main = do
    putStrLn "What you want to calculate?"
    putStrLn "1 - F = M * A"
    putStrLn "2 - A = F / M"
    putStrLn "3 - M = F / A"
    option <- read `fmap` getLine :: IO Integer

    if option == 1 then do
        putStrLn "Mass?"
        mass <- read `fmap` getLine :: IO Double
        putStrLn "Acceleration?"
        acc <- read `fmap` getLine :: IO Double
        putStrLn ("Force is " ++ show (mass * acc))

        else if option == 2 then do
            putStrLn "Force?"
            force <- read `fmap` getLine :: IO Double
            putStrLn "Mass?"
            mass <- read `fmap` getLine :: IO Double
            putStrLn ("Acceleration is " ++ show (force / mass))

            else do
                putStrLn "Force?"
                force <- read `fmap` getLine :: IO Double
                putStrLn "Acceleration?"
                acc <- read `fmap` getLine :: IO Double
                putStrLn ("Mass is " ++ show (force / acc))