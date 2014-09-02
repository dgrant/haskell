module Main where

power :: Int -> Int -> Int
power x 0 = 1
power x n | n > 0 = x * power x (n-1)

main = print (power 2 5)
