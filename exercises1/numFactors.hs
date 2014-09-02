{- Special case: number of factors of 1 is 1 -}
numFactors 1 = 1
{- To find factors of n, countFactors between 1 and n -}
numFactors n = countFactors n 1 n

{- If lower range (a) divides into n, count 2 factors (the lower range (a), and the paired factor (n `div` a)).
 - Then alter the range to be the the lower range + 1 (a+1) to the paired factor (n `div` a).
 - Special case if the the lower range divides is the square root of n (ie. if n=16 and a=4), only count
 - the factor (a=4) once. -}
countFactors n a b | a >= b = 0 
                   | n `mod` a /= 0 = (countFactors n (a+1) (n `div` a))
                   | n `mod` a == 0 && n `div` a == a = (countFactors n (a+1) (n `div` a)) + 1
                   | n `mod` a == 0 = (countFactors n (a+1) (n `div` a)) + 2

main = print (numFactors 16)
