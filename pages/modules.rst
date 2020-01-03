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

Game systems in Foundry Virtual Tabletop are stored within your user data folder under ``Data/systems``. Each system
folder must be named to be identical with the ``name`` attribute in the system manifest. The easiest way to install a
new Game System is by using the automatic installation workflow on the setup page.

1.  Start Foundry VTT and navigate to the Setup page.
2.  On the Systems tab, click **Install System** at the bottom of the window.
3.  Paste in the URL of the system manifest that you are seeking to install.

Alternatively, if you need to manually install a game system from a zip archive or by cloning the repository - simply
clone or extract the system into your ``Data/systems`` directory. Ensure the directory name of the extracted system
matches the name in the system manifest. If you installed a system manually, you will need to restart Foundry VTT in
order for the system to appear.

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

Modules in Foundry Virtual Tabletop are stored within your user data folder under ``Data/modules``. Each module
folder must be named to be identical with the ``name`` attribute in the system manifest. The easiest way to install a
new Module is by using the automatic installation workflow on the setup page.

1.  Start Foundry VTT and navigate to the Setup page.
2.  On the Modules tab, click **Install Module** at the bottom of the window.
3.  Paste in the URL of the module manifest that you are seeking to install.

Alternatively, if you need to manually install a module from a zip archive or by cloning the repository - simply
clone or extract the module into your ``Data/modules`` directory. Ensure the directory name of the extracted module
matches the name in the module manifest. If you installed a module manually, you will need to restart Foundry VTT in
order for the module to appear.

Module Management
-----------------

Module are not automatically activated. Different modules are supported under different Systems, and each World may
independently choose the set of Modules which are used within it. Modules can even be toggled on or off for different
game sessions. To manage these preferences, activate the Module Management panel within your World through the Settings
tab of the Sidebar.

Each installed and compatible Module is listed here, selecting or un-selecting the checkbox to the left of the module
will toggle whether the module is active within the world.
