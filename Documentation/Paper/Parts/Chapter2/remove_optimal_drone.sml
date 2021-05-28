fun remove_optimal_drone(drones: LDrone, shipData: ShipmentData) : LDrone =
let
    val optimalDroneIndex = get_optimal_drone_index(drones, shipData);
    val optimalDrone = List.nth(drones, optimalDroneIndex);
    val dronesRem = rm optimalDrone drones;
in
    dronesRem
end;