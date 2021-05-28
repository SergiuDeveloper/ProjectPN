fun reach_destination(cargo: Cargo) : Cargo =
let
    val drone_loc = #location(#drone(cargo));
    val pred_loc = #predictedLocation(#shipData(cargo));
    val ship_loc = #location(#buyer(#shipment(#shipData(cargo))));
    val delta_lat = #latitude(drone_loc) - #latitude(pred_loc);
    val delta_long = #longitude(drone_loc) - #longitude(pred_loc);
    val delta_alt = #altitude(drone_loc) - #altitude(pred_loc);
    val dest_loc = {
        latitude=(#latitude(ship_loc) + delta_lat),
        longitude=(#longitude(ship_loc) + delta_long),
        altitude=(#altitude(ship_loc) + delta_alt)
    };
    val dest_cargo = {
        drone={
            id=(#id(#drone(cargo))),
            location=dest_loc
        },
        shipData=(#shipData(cargo))
    };
in
    dest_cargo
end;