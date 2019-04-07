.. _entityClass:

Entity and Collection Abstractions
**********************************

All Entities in Foundry Virtual Tabletop are built to extend the Entity class pattern. Collections of same-typed
Entities each belong to a specific Collection instance. Neither of these abstract layers should be required for
direct usage by module developers, but are provided here for reference.

..  contents:: Page Contents
    :depth: 1
    :local:
    :backlinks: top

------

The Entity Class
================

.. autoclass:: Entity
    :members:

------

The Collection Class
====================

.. autoclass:: Collection
    :members:
