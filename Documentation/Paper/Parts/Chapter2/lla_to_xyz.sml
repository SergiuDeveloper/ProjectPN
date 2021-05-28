fun lla_to_xyz(lat: real, long: real, alt: real, degRadRatio) : (real * real * real) =
let
    val lat_rad = lat * degRadRatio;
    val long_rad = long * degRadRatio;
    val x = alt * Math.cos(lat_rad) * Math.cos(long_rad);
    val y = alt * Math.cos(lat_rad) * Math.sin(long_rad);
    val z = alt * Math.sin(lat_rad)
in
    (x, y, z)
end;