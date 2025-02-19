import { render, screen } from "@testing-library/react";
import FriendLobby2 from "../component/Lobby/component/FriendLobby2";
import { MediatorContext, ServerContext } from "../App";
import { Mediator, Server } from "../modules";
import { HOST, MEDIATOR } from "../config";

const mediator = new Mediator(MEDIATOR);
const server = new Server(HOST, mediator);

test("FriendLobby2 snapshot", () => {
    const { asFragment } = render(
        <MediatorContext.Provider value={mediator}>
            <ServerContext.Provider value={server}>
                <FriendLobby2 setPanel={() => {}} gamers/>
            </ServerContext.Provider>
        </MediatorContext.Provider>
    );
    expect(asFragment()).toMatchSnapshot();
});
