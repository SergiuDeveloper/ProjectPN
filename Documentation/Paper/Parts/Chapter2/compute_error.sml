fun compute_error(cargo: Cargo, earthCircumference: real, localizationError: real) : real =
let
    val drone_loc = #location(#drone(cargo));
    val ship_loc = #location(#buyer(#shipment(#shipData(cargo))));
    val delta_lat = abs(#latitude(drone_loc) - #latitude(ship_loc));
    val delta_long = abs(#longitude(drone_loc) - #longitude(ship_loc));
    val delta_alt = abs(#altitude(drone_loc) - #altitude(ship_loc));
    val delta_lat_m = delta_lat * earthCircumference / 180.0;
    val delta_long_m = delta_long * earthCircumference / 180.0;
    val dist = Math.sqrt(sqr(delta_lat_m) + sqr(delta_long_m) + sqr(delta_alt));
    val error = dist / localizationError;
in
    error
end;