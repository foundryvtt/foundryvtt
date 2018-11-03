..	_actor:

The Actor Entity
****************

One of the most fundamental entities within Foundry Virtual Tabletop is the Actor. Actors are the protagonists,
enemies, allies, and personalities within the World that you create. The game System defines the exact types of actors
which are relevant, but for most role-playing games actors will, at the very least, represent the characters which the
players impersonate.

For application developers there are three important layers which are useful when working with Actors. The
:class:`Actors` collection manages the set of actor entities which are present within the world. Each individual actor
within that collection is an instance of the :class:`Actor` class (by default). Game systems which want more control
over the behaviors and attributes of an actor may override this to a subclass included in their own definition.

When viewing or interacting with an actor inside the tabletop framework, the actor's data is rendered and edited using
the :class:`ActorSheet` class (by default). Game systems which want to fine-tune how the actor data is rendered may
override this to a subclass included in their own definition.

----

..  contents:: Actor API Layers

----


The Actors Collection
=====================

..  autoclass:: Actors
    :members:

    .. autofunction:: Collection#insert

    .. autofunction:: Collection#remove

    .. autofunction:: Collection#get

    .. autofunction:: Collection#index

    .. autofunction:: Collection#render

----

The Actor Class
===============

..  autoclass:: Actor
    :members:

----

The Actor Sheet
===============

..  autoclass:: ActorSheet
    :members:

