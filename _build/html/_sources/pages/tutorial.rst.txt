Getting Started with FVTT
*************************

Foundry Virtual Tabletop is a powerful application with lots of features, so it can be overwhelming to a new
game-master, even if you have previous experience using virtual tabletop software. This page attempts to walk you
through the major concepts in Foundry VTT and guide you through the process of creating your first game-ready
Scene.

..  contents:: Tutorial Contents
    :depth: 2
    :local:
    :backlinks: top


Installation and Application Setup
==================================

This page does not go into the installation process in detail. For instructions on how to set up the application and
how to configure things for multi-player hosting please see the :ref:`hosting`.


Worlds, Systems, and Modules
============================

When first starting Foundry Virtual Tabletop, you will be prompted to create your first World. Each world is a
collection of data and content which together defines the areas (Scenes), characters (Actors), things (Items), and
more that your players will experience during the game. Each world is stored in it's own named folder inside the
``public/worlds`` directory of your Foundry Virtual Tabletop folder.

Game Systems
    Each World depends on one (and only one) game System. Each System defines key concepts, data structures, rules, and
    user interfaces which are specific to the game system being played. Example game systems would be **Pathfinder** or
    **Savage Worlds**.

Modules
    At this point, it's worth specifically mentioning the concept of a Module, and how they relate to Worlds and
    Systems. Each Module is an extension of a game System which contributes additional features, interfaces, tools, or
    content. Modules can range quite broadly from a quality of life enhancement suite which adds extra functionality
    to streamline running your game system to a specialized content pack that contributes a custom set of Scenes,
    Actors, or Items.


Creating a World
----------------

.. figure:: /_static/images/world-config.jpg

    This is the World configuration screen, used to create and update worlds.

When creating a new world, you must fill in some mandatory details. The world name is a human-readable string that may
contain special characters. The file path to your world defines the subdirectory name within the ``public/worlds``
folder where your world will be saved.

.. warning::
    The file path for your world will be used in web URLs, so it is best to adhere to common web standards in choosing
    this name. Avoid spaces or special characters, instead using hyphens to separate multiple terms.

You must choose the Game System that your world will use. Foundry VTT comes with some common game systems built-in,
but more game systems are available through our excellent community of mod developers. To install a new game system,
simply download the system definition and extract it within the ``public/systems`` folder. For a new system to be
recognized by the software you must restart the application.

.. warning::
    A world's game system cannot be changed once the world is created, since any data created in that world will use
    the data model and schema for that system.

Lastly, you may provide a text description of your World that can be used to keep track of details about the world or
advertise it to potential players.


Player Configuration
--------------------

One important final setup step is to create and configure the Users who will be joining your game. You should create
a User record for each player you expect to join your game. Control of Actors and other permissions are configured at
the User level, so having different users allows you to give players access to different content.

.. figure:: /_static/images/player-config.jpg

    This is the Users configuration screen, used to create, edit, or delete User records.

Each user is assigned a permission level which controls what capabilities they will have within the Virtual Tabletop.
Additionally each user can have an Access Key which defines a simple password that can be used to restrict access to
each User.

..  warning::
    The Access Keys used in Foundry Virtual Tabletop are NOT cryptographically secure. Please do not reuse any password
    that you also use for other important accounts or services.

In the above example, I have created three Users for my world: Sam, Jill, and Dan. Each user (including the Game-Master)
has a different permission level assigned. Each permission level is described below:

Gamemaster
    Users with the Gamemaster permission level have full control over the world and it's data. Be cautious which users
    you allow to have GM permission, and it is advisable to assign an access key for any GM players.

Player
    The most basic level of permission. Players can join the game and be given access to control or observe Actors and
    Items. Basic player accounts do not have some of the permissions which Trusted Players possess.

Trusted Player
    A player flagged as "trusted" has some additional capabilities beyond that of an ordinary player. Trusted players
    can be allowed access to upload image files to the host's file system (token artwork, for example). Trusted
    players are also allowed to place AoE measurement templates on the game canvas.

Assistant Gamemaster
    An assistant GM is similar to a regular GameMaster, they can see the entire game canvas and can create or edit all
    content. Some permissions are limited, however: Assistant GMs are not allowed to delete Actors, Scenes, or Items.

Even if you don't have any specific players in mind for your world yet, I recommend creating at least one Player user
that you can use for testing out your content from the perspective of a potential player.


First Steps in your World
=========================

Once you have created your World you can join the game using your GameMaster user. At this point, you have a blank
canvas from which to create brand new content, or import content from modules and compendium packs. There are many
possible paths to take in creating a World in Foundry Virtual Tabletop, for the purposes of this tutorial I will walk
you through the typical order in which I would set things up, but feel free to explore or find your own path.

..  note::
    Whenever you load a new World, the game starts as Paused. This prevents players from immediately moving their
    Tokens. You can pause or un-pause the session at any time by pressing the spacebar.

Creating a Scene
----------------

My preferred first step in creating a new World is to start by setting up a Scene. Think of Scenes as the locations
and maps that your players will explore. Scenes are displayed in the game canvas and contain objects used to populate
and define the area like Tokens, Walls, Light Sources, Sounds, Event Triggers, and more.

To create a new Scene, open the Scenes Directory (the map icon, 3rd from the left) in the sidebar on the right-side
of the screen. At the bottom of the sidebar, you can create a new Scene directly, or first create a Folder which you
can use to organize your Scenes into groups. You can always create Folders later and add existing scenes to them with
mouse drag+drop.

To learn all about Scenes and their settings please visit the following page: :ref:`scene`.

..  note::
    For this section of the tutorial, I recommend creating a Scene using a battle-map rather than a regional or world
    map, as that will make it easier to follow the tutorial. If you want to follow along exactly, you can use map
    shown in this tutorial which is available on
    `DeviantArt <https://www.deviantart.com/foundryatropos/art/Foundry-Tavern-at-Night-746759206/>`_.

.. figure:: ../_static/images/tutorial-scene.jpg
    :target: ../_static/images/tutorial-scene.jpg

    I have created an example Scene using the configuration options displayed above.

Once you have created a Scene, let's first learn some basics of navigation. Click and drag with your right-mouse
button to pan the scene, shifting the view of the background image. Use your mouse wheel (or touch zoom) to zoom in
and out. Once you have a feel for basic Scene navigation, let's learn how to populate the scene with Actors which will
represent both player and non-player characters in this area of the world.

Creating Actors and Placing Tokens
----------------------------------

Once you have created and configured a Scene, a great next step to practice is creating an Actor and placing that
Actor within the Scene by creating a Token. To learn all about Actors and their properties please visit the 
following page: :ref:`actor`.

.. figure:: /_static/images/actor-config.jpg
    
    Creating an Actor will allow you to test placing Tokens as well as experiencing the Scene from the player's 
    perspective.

Once you have created an Actor, a good idea is to assign permission to that Actor to one of your player User 
accounts. To do this, right click on the Actor entry in the sidebar and click Permissions. Give the OWNER 
permission to a user you want to have full control over this Actor.

A typical next step in the Actor creation workflow is to configure the default Token that represents this new
Actor. Click the **Configure Token** button at the top of the Actor sheet and follow the instructions on the 
Actor Entity page linked above.

Once the Actor's default token is configured, click and drag the Actor from the sidebar onto the tabletop canvas
for the Scene you created to place the Actor's configured Token into the Scene you created previously.
