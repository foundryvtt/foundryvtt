.. _glossary:

Core Concepts and Glossary of Terms
***********************************

Entity (Entities)
-----------------

Entities are the formal term used for the first-class objects which comprise the core data model for Foundry VTT.
Each Entity type is stored in a separate database table within your World and implements a unique data model which
is extended by the Game System used in that World. The following list references the Entity types in Foundry VTT.

* User <todo>
* Scene <:ref:`scene`>
* Actor <:ref:`actor`>
* Item <todo>
* Combat <todo>
* ChatMessage <todo>
* JournalEntry <todo>
* Playlist <todo>
* Folder <todo>

Game System
-----------

Game Systems provide the underlying rule-sets and definitions needed to play games by defining the types of entities
(Actors, Items, etc...) and the data they contain. This extends and empowers the core software to incorporate System
specific rules and behaviors. Systems are located inside the ``/app/resources/public/systems`` folder. <:ref:`modules`>

Module
------

Modules enhance or replace functionality of Foundry Virtual Tabletop by extending the behavior of the core software
and Systems to add new content, features, or aesthetics. Modules can contain anything ranging from entirely new tools
to pre-build adventure paths which can be imported into existing Worlds. Modules are located inside the
``/app/resources/public/modules`` folder. <:ref:`modules`>

Placeable Object
----------------

Placeable Objects are the term used broadly for elements that can be placed into a Scene and represented on the game
Canvas. These objects are stored within the Scene where they exist. The following list references the Placeable Object
types in Foundry VTT.

* Token <todo>
* Wall <todo>
* Tile <todo>
* Drawing <todo>
* Ambient Light <todo>
* Ambient Sound <todo>
* Measured Template <todo>
* Note <todo>

World
-----

A World represents the combination of many concepts into an actual game session. Each World is a parallel universe,
running a different Game System with different Modules, and containing different Entities. You may only ever have a
single World, or you may build and run games across a multitude of them. Each World contains its own data and is
designed to be portable. Worlds are located inside the ``/app/resources/public/worlds`` folder.

