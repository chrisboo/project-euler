import Data.List (union)

main = do
    print $ sum $ union [3,6..999] [5,10..999]