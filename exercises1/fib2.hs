fib' n = fib'' n (0,1)
    where fib'' 0 (p1, p2) = p1
          fib'' n (p1, p2) = fib'' (n-1) (p2, p1+p2)

main = do print (map fib' [5,10 .. 20])
