fun generate_buyer(productType: ProductType, earthRadius: real) : Buyer =
let
    val lat = uniform(~90.0, 90.0);
    val long = uniform(0.0, 180.0);
    val alt = earthRadius;
    val loc = {
        latitude=lat,
        longitude=long,
        altitude=alt
    };
    val buyer = {
        productType=productType,
        location=loc
    };
in
    buyer
end;