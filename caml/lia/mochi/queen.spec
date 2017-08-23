valcegar aux1 : (n:int ->
                 (x_3:int[0 <= x_8 && x_8 < n] -> (int -> X) -> X) ->
                 x_8:int[x_8 = 0; 0 <= x_8 && x_8 < n] -> (unit -> X) -> X)
valcegar aux2 : (j:int ->
                 n:int[j < n] ->
                 int ->
                 (k:int[0 <= k && k < n] -> (int -> X) -> X) ->
                 i:int[x_10 >= x_1] -> (x_12:bool[x_12] -> X) -> X)
valcegar loop : (n:int ->
                 row:int[1 <= n; row <= n; 0 <= row] ->
                 (i:int[0 <= i && i < n] -> (x:int[x >= 0] -> X) -> X) -> (unit -> X) -> X)
