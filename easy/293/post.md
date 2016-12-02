**Haskell**

    data Color = WHITE | BLACK | PURPLE | RED | GREEN | ORANGE

    disarme :: Color -> [Color] -> Bool
    disarme _ [] = False
    disarme WHITE (WHITE:xs) = True
    disarme WHITE (BLACK:xs) = True
    disarme BLACK (WHITE:xs) = True
    disarme BLACK (GREEN:xs) = True
    disarme BLACK (ORANGE:xs) = True
    disarme PURPLE (PURPLE:xs) = True
    disarme PURPLE (GREEN:xs) = True
    disarme PURPLE (ORANGE:xs) = True
    disarme PURPLE (WHITE:xs) = True
    disarme RED (WHITE:xs) = True
    disarme RED (BLACK:xs) = True
    disarme RED (PURPLE:xs) = True
    disarme RED (RED:xs) = True
    disarme RED (ORANGE:xs) = True
    disarme ORANGE (WHITE:xs) = True
    disarme ORANGE (PURPLE:xs) = True
    disarme ORANGE (GREEN:xs) = True
    disarme ORANGE (ORANGE:xs) = True
    disarme GREEN (BLACK:xs) = True
    disarme GREEN (PURPLE:xs) = True
    disarme GREEN (RED:xs) = True
    disarme GREEN (GREEN:xs) = True
    disarme _ (x:xs) = disarme x xs

    test :: [[Color]] -> [String]
    test [] = []
    test (x:xs)
     | (disarme (head x) (tail x)) = ["Boom"] ++ test xs
     | otherwise                 = ["Bomb defused"] ++ test xs

    main = mapM_ putStrLn $ test [[WHITE, RED, GREEN, WHITE], [WHITE, ORANGE, GREEN, WHITE]]

**OUTPUT**

    Bomb defused
    Boom
