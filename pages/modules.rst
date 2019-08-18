.. _modules:

Installing Game Systems and Modules
***********************************

Foundry Virtual Tabletop provides a strong platform for community developers to use skills in HTML, JavaScript, and
CSS to create modules or entire game systems which extend and enhance platform functionality. This page describes where
to find modules and systems and how to install them for use in Foundry VTT.

-------

Game Systems
============

Game Systems provide the underlying rule-sets and definitions needed to play games by defining the types of entities
(Actors, Items, etc...) and the data they contain. This extends and empowers the core software to incorporate System
specific rules and behaviors. To discover additional game Systems which are available for use or for testing, please
browse the Community Wiki Page here: https://foundry-vtt-community.github.io/wiki/Community-Game-Systems/

System Installation Process
---------------------------

To install a new game System for Foundry Virtual Tabletop, follow these steps:

1.  Download the .zip archive of the System from the provided location.
2.  Extract the zip archive into the ``/resources/app/public/systems`` folder. The folder name for each
    installed System must match exactly with it's canonical name, and take care that an extra layer of folder nesting
    was not inadvertently added by the extraction process. For example, if installing the System for Dungeons & Dragons
    5th Edition (dnd5e), you would end up with a file path that looks like
    ``/resources/app/public/systems/dnd5e/system.json``.
3.  Restart Foundry Virtual Tabletop.
4.  Confirm that the installed System is now available for selection when creating a new World.

Changing the System of an Existing World
----------------------------------------

..  warning::
    There is (currently) no guaranteed or officially supported method for migrating an existing World from one game
    System to another. The following steps may introduce errors or data loss. Be sure to copy your original world first
    in case this procedure does not work. Do this at your own risk.

To change the System used by an existing World, follow these steps.

1.  Acknowledge the warning message written at the top of this section, and understand this is a potentially risky
    process.
2.  Open the ``world.json`` file in a text editor.
3.  Change the ``"system"`` field to the canonical name of your desired new System.
4.  Set the ``"systemVersion"`` field to ``0`` (the value zero) to force a System migration next time that world is
    loaded.
5.  Restart Foundry Virtual Tabletop and attempt to load the world.

-------

Modules
=======

Modules enhance or replace functionality of Foundry Virtual Tabletop by extending the behavior of the core software
and Systems to add new content, features, or aesthetics. Modules can contain anything ranging from entirely new
tools to pre-build adventure paths which can be imported into existing Worlds.

To discover the broad range of modules which are currently available and under development please browse the Community
Wiki page https://foundry-vtt-community.github.io/wiki/Community-Modules/.


Module Installation Process
---------------------------

To manually install modules, follow these steps.

1.  Download the .zip archive of the Module from the provided location.
2.  Extract the zip archive into the ``/resources/app/public/modules`` folder. The folder name for each
    installed System must match exactly with it's canonical name, and take care that an extra layer of folder nesting
    was not inadvertently added by the extraction process. For example, if installing the SVG Loader (svg-loader)
    module, the resulting file path should be ``/resources/app/public/modules/svg-loader/module.json``.
3.  Restart Foundry Virtual Tabletop.
4.  Confirm that the installed Module is now available for selection in the Module Management panel of your World.


Module Management
-----------------

Module are not automatically activated. Different modules are supported under different Systems, and each World may
independently choose the set of Modules which are used within it. Modules can even be toggled on or off for different
game sessions. To manage these preferences, activate the Module Management panel within your World through the Settings
tab of the Sidebar.

Each installed and compatible Module is listed here, selecting or un-selecting the checkbox to the left of the module
will toggle whether the module is active within the world.
