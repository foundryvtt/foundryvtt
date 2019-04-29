.. _actorAPI:

The Actor Entity
****************

For application developers there are three important layers which are useful when working with Actors. The
:class:`Actors` collection manages the set of actor entities which are present within the world. Each individual actor
within that collection is an instance of the :class:`Actor` class (by default). Game systems which want more control
over the behaviors and attributes of an actor may override this to a subclass included in their own definition.

When viewing or interacting with an actor inside the tabletop framework, the actor's data is rendered and edited using
the :class:`ActorSheet` class (by default). Game systems which want to fine-tune how the actor data is rendered may
override this to a subclass included in their own definition.

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

..  autoclass:: foundry.Actor
    :members:

    .. autofunction:: Entity.create
    .. autofunction:: Entity#update
    .. autofunction:: Entity#delete

----

The Actor Sheet
===============

..  autoclass:: ActorSheet
    :members:

