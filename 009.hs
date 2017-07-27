main = do
    print $ head [a * b * c | c <- [335..499], b <- [((1000-c) `quot` 2)..(c-1)], let a = 1000 - b - c, c * c == a * a + b * b]