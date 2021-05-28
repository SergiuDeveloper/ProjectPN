fun get_delivery_payment(travDist: real, shipCostPerKM: real) : int =
let
    val cost = floor(travDist * shipCostPerKM);
in
    cost
end;