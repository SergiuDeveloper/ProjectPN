fun localize(loc: Location, []: LSatellite, err: real) : PredictedLocation =
let
    val res_pred = {
        latitude=0.0,
        longitude=0.0,
        altitude=0.0
    };
    val res_tuple = {
        original=loc,
        predicted=res_pred
    };
in
    res_tuple
end
    | localize(loc: Location, sat::sats_t: LSatellite, err: real) : PredictedLocation =
let
    val prev_pred = #predicted(localize(loc, sats_t, err));
    val pred = {
        latitude=uniform(#latitude(loc) - err * 180.0, #latitude(loc) + err * 180.0),
        longitude=uniform(#longitude(loc) - err * 180.0, #longitude(loc) + err * 180.0),
        altitude=uniform(#altitude(loc) - err, #altitude(loc) + err)
    };
    val res_pred = {
        latitude=(#latitude(prev_pred) * Real.fromInt(length(sats_t)) + #latitude(pred)) / (Real.fromInt(length(sats_t)) + 1.0),
        longitude=(#longitude(prev_pred) * Real.fromInt(length(sats_t)) + #longitude(pred)) / (Real.fromInt(length(sats_t)) + 1.0),
        altitude=(#altitude(prev_pred) * Real.fromInt(length(sats_t)) + #altitude(pred)) / (Real.fromInt(length(sats_t)) + 1.0)
    };
    val res_tuple = {
        original=loc,
        predicted=res_pred
    };
in
    res_tuple
end;