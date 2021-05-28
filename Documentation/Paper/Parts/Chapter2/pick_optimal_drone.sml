fun pick_optimal_drone(drones: LDrone, shipData: ShipmentData) : Cargo =
let
    val optimalDroneIndex = get_optimal_drone_index(drones, shipData);
    val optimalDrone = List.nth(drones, optimalDroneIndex);
    val cargo = {
        drone=optimalDrone,
        shipData=shipData
    };
in
    cargo
end;