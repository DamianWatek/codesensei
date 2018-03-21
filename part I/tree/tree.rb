
# Napisz program rysujący tekstową choinkę w konsoli. Na przykład taką:

n = 7
i = (1..n)
i.step(2) { |x| puts ("*" * x).center(11) }

n = 11
i = (3..n)
i.step(2) { |x| puts ("*" * x).center(11) }


puts "*".center(12)