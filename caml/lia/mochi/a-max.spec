val array_max :
  n:int ->
  i:int ->
  (j:int[j <= 0] -> r:int[r >= n - j; r >= n]) ->
  m:int[m >= n; i <= 0; n >= i + m + 2; n >= i + 1] ->
  r:int[r >= n]
