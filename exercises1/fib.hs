fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

numFib 0 = 0
numFib 1 = 0
numFib n = 1 + numFib (n-1) + numFib (n-2)

main = do print (map fib [5,10 .. 20])
          print (map numFib [20])
