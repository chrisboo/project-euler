fiblist :: [Integer]
fiblist = 0 : 1 : zipWith (+) fiblist (tail fiblist)

main = do
    print (sum [x | x <- takeWhile (<= 4000000) fiblist, even x])