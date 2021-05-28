fun is_satellite_above(sat: Satellite, loc: Location, earthRadius: real, degRadRatio: real) : bool =
let
    val sat_xyz = lla_to_xyz(#latitude(sat), #longitude(sat), #altitude(sat), degRadRatio);
    val loc_xyz = lla_to_xyz(#latitude(loc), #longitude(loc), #altitude(loc) + 10.0, degRadRatio);
    val x1 = #1(sat_xyz);
    val y1 = #2(sat_xyz);
    val z1 = #3(sat_xyz);
    val x2 = #1(loc_xyz);
    val y2 = #2(loc_xyz);
    val z2 = #3(loc_xyz);
    val x3 = 0.0;
    val y3 = 0.0;
    val z3 = 0.0;
    val quadratic_a = sqr(x2 - x1) + sqr(y2 - y1) + sqr(z2 - z1);
    val quadratic_b = 2.0 * ((x2 - x1) * (x1 - x3) + (y2 - y1) * (y1 - y3) + (z2 - z1) * (z1 - z3));
    val quadratic_c = sqr(x3) + sqr(y3) + sqr(z3) + sqr(x1) + sqr(y1) + sqr(z1) + 2.0 * (x3 * x1 + y3 * y1 + z3 * z1) - sqr(earthRadius);
    val delta = sqr(quadratic_b) - 4.0 * quadratic_a * quadratic_c;
in
    delta < 0.0
end;