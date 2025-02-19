import { render, screen } from "@testing-library/react";
import FriendLobby1 from "../component/Lobby/component/FriendLobby1";
import { MediatorContext, ServerContext } from "../App";
import { Mediator, Server } from "../modules";
import { HOST, MEDIATOR } from "../config";

const mediator = new Mediator(MEDIATOR);
const server = new Server(HOST, mediator);

test("FriendLobby1 snapshot", () => {
    const { asFragment } = render(
        <MediatorContext.Provider value={mediator}>
            <ServerContext.Provider value={server}>
                <FriendLobby1 setPanel={() => {}} gamers/>
            </ServerContext.Provider>
        </MediatorContext.Provider>
    );
    expect(asFragment()).toMatchSnapshot();
});
