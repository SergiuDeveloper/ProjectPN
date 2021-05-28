fun generate_drone(id: int, earthRadius: real) : Drone =
let
    val lat = uniform(~90.0, 90.0);
    val long = uniform(0.0, 180.0);
    val alt = earthRadius;
    val loc = {
        latitude=lat,
        longitude=long,
        altitude=alt
    };
    val drone = {
        id=id,
        location=loc
    };
in
    drone
end;