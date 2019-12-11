.._itemAPI:

The Item Entity
***************

Item entities represent objects or features that are owned by an Actor. While the term item tends to imply physical
possessions, as a developer in Foundry Virtual Tabletop you should consider Items as the building block for anything
that can be owned by an Actor. For example, in the D&D5e system, Item types are used for Classes, Spells, and Feats 
in addition to standard inventory and equipment.

The FVTT framework provides core APIs for manipulating and modifying Items including support to allow Items to belong
to an Actor to modify the Actor's owned version of that Item.

There are several important API layers which are useful when working with Items. The :class:`Items` collection has
all of the :class:`Item` instances which are defined at the World level (as oppoosed to owned items which belong to
a specific actor). This Items collection is available under ``game.items``.

The :class:`Item` class represents a single item which may be unowned (and defined at the World level) or owned (and
defined at the Actor level). Owned items which belong to an :class:`Actor` are defined in that actor's data model 
under ``actor.data.items``. The :class:`Item` class may be overridden by a system or module by defining the 
``Config.Item.entityClass`` global configuration value.

When viewing or interacting with an item's data, the item is rendered and edited using the :class:`ItemSheet` class
which can be extended or overridden by systems or modules. To override the default implementation, a mod should 
define the ``CONFIG.Item.sheetClass`` global configuration value.

..  contents:: Items API Components
    :depth: 1
    :local:
    :backlinks: top

----

The Item Class
==============

..  autoclass:: foundry.Item
    :members:

    .. autofunction:: Entity.create
    .. autofunction:: Entity#update
    .. autofunction:: Entity#delete

----

The Items Collection
====================

..  autoclass:: Items
    :members:

    .. autofunction:: Collection#insert
    .. autofunction:: Collection#remove
    .. autofunction:: Collection#get
    .. autofunction:: Collection#index
    .. autofunction:: Collection#render

----

The Item Sheet
==============

..  autoclass:: ItemSheet
    :members:
