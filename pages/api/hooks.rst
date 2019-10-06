
Available API Hooks
*******************

This page provides an (incomplete) reference of available Hooks within Foundry VTT. Hooks provide a mechanism to perform
certain action when various events occur. Each hook transacts a different set of arguments, but the standard syntax for 
registering a handler function is as follows:

``Hooks.on(eventName, (...args) => {});``


Initialization and Setup
========================

``init()``

``canvasInit()``

``ready()``


Entity and Object Database Operations
=====================================

For each :class:`Entity` (Actor, Scene, Item, ...) type the following hooks are available.

``preCreate<Entity>(createData, options)``

``create<Entity>(createdData, options, userId)``

``preUpdate<Entity>(updateData, options)``

``update<Entity>(updatedData, options, userId)``

``preDelete<Entity>(deleteId, options)``

``delete<Entity>(deletedId, options, userId)``

For each :class:`PlaceableObject` (Token, Wall, OwnedItem, Tile, ...) the following hooks are available.

``preCreate<Object>(parentId, createData, options)``

``create<Object>(parentId, createdData, options, userId)``

``preUpdate<Object>(parentId, updateData, options)``

``update<Object>(parentId, updatedData, options, userId)``

``preDelete<Object>(parentId, deleteId, options)``

``delete<Object>(parentId, deletedId, options, userId)``


Applications and Interface
==========================

``sidebarCollapse(sidebar, collapsed)``
