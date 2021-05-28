fun construct_client_feedback(isSatisfied: bool, shipRes: ShipmentResult) : ClientFeedback =
let
    val clientFb = {
        isSatisfied=isSatisfied,
        shipRes=shipRes
    };
in
    clientFb
end;