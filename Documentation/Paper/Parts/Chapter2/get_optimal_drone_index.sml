fun get_optimal_drone_index(drones: LDrone, shipData: ShipmentData) : int =
let
    fun dist_list_map(drone: Drone) : real =
    let
        val dist = sqr(#latitude(#location(drone)) - #latitude(#predictedLocation(shipData))) +
                        sqr(#longitude(#location(drone)) - #longitude(#predictedLocation(shipData))) +
                        sqr(#altitude(#location(drone)) - #longitude(#predictedLocation(shipData)));
    in
        dist
    end;

    fun min_index([]: real list, index: int, minIndex: int, minVal: real) : int = minIndex
        | min_index(distList_h::distList_t: real list, index: int, minIndex: int, minVal: real) : int =
        if distList_h < minVal then
            min_index(distList_t, index + 1, index, distList_h)
        else
            min_index(distList_t, index + 1, minIndex, minVal);
   
    val distList = map dist_list_map drones;
    val minDistIndex = min_index(tl(distList), 1, 0, hd(distList));
in
    minDistIndex
end;