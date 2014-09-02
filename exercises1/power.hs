pow1 _ 0 = 1
pow1 x n = x * pow1 x (n-1)

powerCalls1 0 = 1
powerCalls1 n | n > 0 = 1 + powerCalls1 (n-1)

pow2 x 0 = 1
pow2 x n | even n = pow2 (x*x) (div n 2)
         | otherwise = (pow2 (x*x) (div n 2)) * x

powerCalls2 0 = 1
powerCalls2 n = 1 + powerCalls2 (div n 2)

main = do print (pow1 2 10)
          print (pow2 2 10)
          print (powerCalls1 50)
          print (powerCalls2 50)
