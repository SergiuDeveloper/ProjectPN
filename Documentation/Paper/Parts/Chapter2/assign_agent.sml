fun assign_agent(clientFb: ClientFeedback, agent: CSEmployee) : CSTask =
let
    val task = {
        clientFb=clientFb,
        agent=agent
    };
in
    task
end;