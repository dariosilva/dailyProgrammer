revFacAux :: (Int, Int) -> String
revFacAux (1, m) = " = " ++ show (m - 1) ++ "!"
revFacAux (0, m) = " NONE"
revFacAux (n, m) = revFacAux (n `div` m, m + 1)

revFac :: [Int] -> [String]
revFac [] = []
revFac (x:xs) = (show(x) ++ revFacAux(x, 1)) : revFac xs

main = mapM_ putStrLn $ revFac [3628800, 479001600, 6, 18] 
