.. _userAPI:

The User Entity
***************

Each connected client corresponds to an instance of the :class:`User` Entity. The collection of all such Entities is stored in the :class:`Users` Collection. Refer to the :ref:`users` page for documentation regarding the User concept and its usage within Foundry VTT.

..  contents:: Users API Components
    :depth: 1
    :local:
    :backlinks: top

------

The User Instance
=================

..  autoclass:: User
    :members:

    .. autofunction:: Entity.create
    .. autofunction:: Entity#update
    .. autofunction:: Entity#delete

------

The Users Collection
====================

..  autoclass:: Users
    :members:

    .. autofunction:: Collection#insert
    .. autofunction:: Collection#remove
    .. autofunction:: Collection#get

------

The Player Config Application
=============================

.. autoclass:: PlayerConfig
	:members:
