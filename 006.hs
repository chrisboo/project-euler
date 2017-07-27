main = do
    print $ sum [x * x * (x - 1) | x <- [1..100]]