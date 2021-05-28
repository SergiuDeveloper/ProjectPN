fun simulate_client_satisfaction(error: real) : bool =
let
    val randNum = uniform(0.0, 1.0);
in
    randNum > error
end;