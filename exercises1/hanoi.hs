hanoi n = hanoitowers n 1 2 3
hanoicount n = hanoisteps n 1 2 3
hanoicount4 n = hanoisteps4 n 1 2 3

hanoitowers 0 from temp dest = []
hanoitowers n from temp dest = hanoitowers (n-1) from dest temp ++
                                  [(from, dest)] ++
                                  hanoitowers (n-1) temp from dest

hanoisteps 0 from temp dest = 0
hanoisteps n from temp dest = (hanoisteps (n-1) from dest temp) + 1 + (hanoisteps (n-1) temp from dest)

hanoisteps4 0 from temp dest = 0
hanoisteps4 n from temp dest = (hanoisteps (n-2) from dest temp) + 3 + (hanoisteps (n-2) temp from dest)

main = do print (hanoi 10)
          print (hanoicount 10)
          print (hanoicount4 10)
