fun get_satellites_above([]: LSatellite, loc: Location, earthRadius: real, degRadRatio: real) : LSatellite = []
    | get_satellites_above(sat::sats_t: LSatellite, loc: Location, earthRadius: real, degRadRatio: real) : LSatellite =
let
    val satsAbove = get_satellites_above(sats_t, loc, earthRadius, degRadRatio);
in
    if is_satellite_above(sat, loc, earthRadius, degRadRatio) then
        sat::satsAbove
    else
        satsAbove
end;