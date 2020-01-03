.. _user:

The User Entity
***************

Each player who connects to a Foundry Virtual Tabletop session is a User. Users represent human beigns (or possibly programmatic players) and are the cornerstone of identity in FVTT. 

..  contents:: Users Overview
    :depth: 1
    :local:
    :backlinks: top

User Creation and Configuration
===============================

Users are created within an active World, and the set of Users is specific to that world. There are no global user accounts, each World maintains it's own player list and user-level permission controls.

To create a new User, visit the **Configure Players** screen through the Escape Menu or on the Settings Sidebar while logged into the World as a GameMaster user. From this management panel you can create new users, delete existing users, or change a user's name, access key, or role.

.. figure:: /_static/images/players-config.jpg
    
    The Players Configuration screen allows you to modify the Users who can participate in your Foundry VTT World.

User Config Settings
====================

Within the application, there are additional configuration options for each User which can be customized by either a GameMaster user or by the player themselves by right-clicking on the **Players HUD** at the bottom-left corner of the UI.

.. figure:: /_static/images/player-config.jpg
    
    The config sheet for a single User allows that player to choose their preferred character and other User-specific
    settings.

User Roles
==========

Each User has a specific **role** which configures their basic permission set of actions they can perform within a Foundry VTT game. The role for each User is configured using the **Configure Players** page described above. Each of the role levels and their meanings are described below:

**None**
    The User is blocked from taking actions in Foundry Virtual Tabletop. You can use this role to temporarily or 
    permanently ban a user from joining the game.

**Player**
    The User is able to join the game with permissions available to a standard player. They cannot take some more
    advanced actions which require Trusted permissions, but they have the basic functionalities needed to operate
    in the virtual tabletop.

**Trusted**
    Similar to the Player role, except a Trusted User has the ability to perform some more advanced actions like 
    create drawings, measured templates, or even to (optionally) upload media files to the server.

**Game Master**
    A special User who has administrative control over this specific World. Game Masters behave quite differently
    than Players in that they have the ability to see all Entities and Objects within the world as well as the
    capability to configure World settings.

**Assistant**
    A special User who has many of the same in-game controls as a Game Master User, but does not have the ability 
    to perform administrative actions like changing User roles or modifying World-level settings.
