fun get_traversed_distance(cargo: Cargo, earthCircumference: real) : real =
let
    val init_loc = #location(#drone(cargo));
    val ship_loc = #location(#buyer(#shipment(#shipData(cargo))));
    val delta_lat = abs(#latitude(init_loc) - #latitude(ship_loc));
    val delta_long = abs(#longitude(init_loc) - #longitude(ship_loc));
    val delta_alt = abs(#altitude(init_loc) - #altitude(ship_loc));
    val delta_lat_m = delta_lat * earthCircumference / 180.0;
    val delta_long_m = delta_long * earthCircumference / 180.0;
    val dist = Math.sqrt(sqr(delta_lat_m) + sqr(delta_long_m) + sqr(delta_alt));
in
    dist
end;