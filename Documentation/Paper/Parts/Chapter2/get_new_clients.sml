fun get_new_clients(CI(i): CampaignIntensity) : int =
let
    val newClients = discrete(1, pow(2, i));
in
    newClients
end;