fun pow(x: int, 0: int) : int = 1
    | pow(x: int, y: int) : int =
    x * pow(x, y - 1);