abs x | x >= 0 = x
      | x < 0 = -x

prop_abs x = x == sign x * abs x


main = abs -5
