..	_scene:

Scenes
******

Scene entities represent the areas of a World that the players may explore. Scenes may depict a variety of settings
ranging from world or regional maps all the way down to small buildings or dungeons. At each point in time, one
Scene may be treated as the ``active`` scene. The same scene is active for all users. For each individual user a 
different Scene may be treated as the ``viewed`` scene, which is the area currently rendered on the game canvas
for that user. The Foundry VTT framework provides APIs for manipulating and modifying Scene structure and 
configuration.

There are several important API layers which are useful when working with Scenes. The :class:`Scenes` collection 
contains all of the :class:`Scene` instances which are defined by the World, the collection of these scenes is 
available as ``game.scenes``.

When modifying the scene configuration, the data is rendered and edited using the :class:`SceneSheet` class which
can be extended or overridden by systems or modules. To override the default implementation, a module should
define the ``Config.Scene.sheetClass`` global configuration value.

Additionally, each scene has rich notes associated with it which are customizable using the :class:`SceneNotes` 
class. Similarly, this class can be overridden or extended by modules by altering the ``Config.Scene.notesClass``
global configuration.

----

..  contents:: Scene API Components

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

The Scene Class
===============

..  autoclass:: raw.Scene
    :members:

----

The Scene Sheet
===============

..  autoclass:: SceneSheet
    :members:
