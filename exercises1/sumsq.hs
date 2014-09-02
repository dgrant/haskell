sumsq :: Int -> Int
sumsq 1 = 1
sumsq n = n^2 + sumsq (n-1)

main = print (sumsq 4)
