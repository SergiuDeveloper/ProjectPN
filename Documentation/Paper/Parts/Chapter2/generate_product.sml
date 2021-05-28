fun generate_product(pt: ProductType) : Product =
let
    val price = abs(round(normal(Real.fromInt(averagePrice - minPrice), 100000.0))) + minPrice;
    val product = {
        productType=pt,
        price=price
    };
in
    product
end;