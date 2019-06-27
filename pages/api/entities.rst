.. _entityAPI:

Game Entities API
*****************

Each Entity type in Foundry Virtual Tabletop extends the base :class:``Entity`` class. These implementations and related
functionality are detailed on the following pages.

..  toctree::
    :caption: Entity API
    :maxdepth: 2

    entities/abstract
    entities/user
    entities/scene
    entities/actor
    entities/item
    entities/playlist
    entities/compendium


Database Operation Workflow
===========================

Entities are managed through a set of API methods which allow for create, update, and delete operations. These methods
follow a standardized workflow:

1. Client A dispatches a request by calling the entity manipulation method, for example ``Actor.create(actorData, options);``

2. A pre-creation hook ``preCreateActor`` is triggered which can allow modules or systems to modify the contents of ``actorData`` 
   before it is dispatched to the server.

3. A server-side event handler processes the request and updates the database. Once the database write is successful, the 
   handler responds to the requesting client (A) with an "acknowledgement" indicating the request was completed. Furthermore,
   the handler broadcasts the event to all other connected clients, informing other users that a change was made.

4. Updated data is received by all connected clients and for each client a post-update hook, in this case ``createActor`` is
   triggered which allows modules or systems to take follow-up actions in response to the change.

The workflow diagram below illustrates this process for the example event of an Actor creation.


.. figure:: /_static/images/socket-workflow.svg

    This diagram illustrates the socket event workflow for an Actor creation request

