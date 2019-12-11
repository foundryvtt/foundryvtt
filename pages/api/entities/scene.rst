.. _sceneAPI:

The Scene Entity
****************

There are several important API layers which are useful when working with Scenes. Each Scene is an instance of the
:class:`Scene` class which subclasses the base :class:`Entity`.

The :class:`Scenes` collection contains all of the Scene instances which are defined by the World, the collection of
these scenes is available as ``game.scenes``.

When modifying the scene configuration, the data is rendered and edited using the :class:`SceneSheet` class which
can be extended or overridden by systems or modules. To override the default implementation, a module should
define the ``Config.Scene.sheetClass`` global configuration value.

Additionally, each scene has rich notes associated with it which are customizable using the :class:`SceneNotes`
class. Similarly, this class can be overridden or extended by modules by altering the ``Config.Scene.notesClass``
global configuration.

..  contents:: Scenes API Components
    :depth: 1
    :local:
    :backlinks: top

----

The Scene Class
===============

..  autoclass:: foundry.Scene
    :members:

    .. autofunction:: Entity.create
    .. autofunction:: Entity#update
    .. autofunction:: Entity#delete

----

The Scenes Collection
=====================

..  autoclass:: Scenes
    :members:

    .. autofunction:: Collection#insert
    .. autofunction:: Collection#remove
    .. autofunction:: Collection#get
    .. autofunction:: Collection#index
    .. autofunction:: Collection#render

----

Scene Configuration Sheet
=========================

..  autoclass:: SceneSheet
    :members:

----

Scene Notes
===========

..  autoclass:: SceneNotes
    :members:
