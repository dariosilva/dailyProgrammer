data Color = WHITE | BLACK | PURPLE | RED | GREEN | ORANGE

cutWire :: Color -> [Color] -> Bool
cutWire _ [] = False
cutWire WHITE (WHITE:xs) = True
cutWire WHITE (BLACK:xs) = True
cutWire BLACK (WHITE:xs) = True
cutWire BLACK (GREEN:xs) = True
cutWire BLACK (ORANGE:xs) = True
cutWire PURPLE (PURPLE:xs) = True
cutWire PURPLE (GREEN:xs) = True
cutWire PURPLE (ORANGE:xs) = True
cutWire PURPLE (WHITE:xs) = True
cutWire RED (WHITE:xs) = True
cutWire RED (BLACK:xs) = True
cutWire RED (PURPLE:xs) = True
cutWire RED (RED:xs) = True
cutWire RED (ORANGE:xs) = True
cutWire ORANGE (WHITE:xs) = True
cutWire ORANGE (PURPLE:xs) = True
cutWire ORANGE (GREEN:xs) = True
cutWire ORANGE (ORANGE:xs) = True
cutWire GREEN (BLACK:xs) = True
cutWire GREEN (PURPLE:xs) = True
cutWire GREEN (RED:xs) = True
cutWire GREEN (GREEN:xs) = True
cutWire _ (x:xs) = cutWire x xs

test :: [[Color]] -> [String]
test [] = []
test (x:xs)
 | (cutWire (head x) (tail x)) = ["Boom"] ++ test xs
 | otherwise                 = ["Bomb defused"] ++ test xs

main = mapM_ putStrLn $ test [[WHITE, RED, GREEN, WHITE], [WHITE, ORANGE, GREEN, WHITE]]
