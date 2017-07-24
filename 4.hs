main = do
    -- a high probability that the palindrome has 6 digits, so it must be divisible by 11
    print $ maximum [x | y <- [110,121..999], z <- [y..999], let x = y * z, let s = show x, s == reverse s]