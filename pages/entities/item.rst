.. _item:

The Item Entity
***************

A key Entity within Foundry Virtual Tabletop is the Item. Each Item represents a physical or conceptual component
which can be "owned" by an Actor. Items could range from something very tangible like a Longsword which is carried
in the Actor's inventory to something more philosophical like a Background, Feat, or Trait which grants the Actor
which owns it additional abilities or bonuses. 

Since Foundry Virtual Tabletop is designed to be system agnostic, it is very difficult to anticipate what exact 
types of "Items" will be required by different game systems to enable their game mechanics and character progression.
It is therefore left up to System developers to define the types of Items which are relevant for the needs of the
system and the data structures that each Item type contains.

Most Items start as globally defined as Entities within the World, but once an Item is added to an Actor, it becomes
an Owned Item which no longer has a global ID, but rather a local ID within the parent Actor's set of items.

..  contents:: Working with Items
    :depth: 1
    :local:
    :backlinks: top

-----

Item Creation and Configuration
===============================

To create a new Item, navigate to the Items Directory in the sidebar by clicking on the icon that looks like a suitcase.
At the bottom of this directory tab you can create a new Item, or create Folder structures to organize your collection of
Item entitites.

Configuration of Items is controlled by the Game System implementation, as the types of Items and their data structures 
are an integral part of the system itself. Generally speaking, an Item is configured using an Item Sheet, which may vary
in form and function for different types of Items. Specialty Item Sheets can also be added by modules which can extend or
replace the default sheets which come with a certain game system.

.. figure:: /_static/images/item-sheet-5e.jpg
    
    An example of the Item Sheet from the D&D5E system for the Spell type Item.

-----

Item Permissions
================

Each Item can have permissions configured at an individual User level. The level of permission given to an Item affect
which Users are able to see an interact with it inside the World sidebar directory. To modify the configured permissions
for an Item, right click on it's entry in the sidebar and select the Permissions config. The chosen **Default** permission 
level for the Item applies to all users unless they are a Game Master (who can access all Items) or that specific User
is granted a different permission level.

None
    The User is not able to see the Item in the sidebar or interact with it's Item Sheet. This is the initial default
    permission level for new Items.

Limited
    The User is able to see the Item entry in the sidebar, and observe limited (but not full) details regarding that
    Item. The amount of detail provided to users with a Limited permission level is a choice left up to the game system
    or Item Sheet module developer.

Observer
    The User is able to see the Item entry in the sidebar directory and inspect it's Item Sheet, but is not able to
    edit or otherwise make changes to the Item.

Owner
    The User has full control over the Item, can see it in the sidebar, can open it's Item Sheet, and can make changes
    to the Item's data. Note that only Game Master users can edit Item permissions.
