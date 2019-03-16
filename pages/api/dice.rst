.. _diceAPI:

Dice Rolling API
****************

For mod developers, you may want to customize in-depth the behavior of dice rolling. You can interact directly with
the Roll API by creating instances of the :class:`Roll` class.

-----

The Roll Interface
==================

Most frequently when dispatching or executing dice rolls, you will want to use the :class:`Roll` API directly, which
handles the parsing of dice syntax, the evaluation of dynamic attributes and more.

..  autoclass:: Roll
    :members:

-----

The Basic Die
=============

There may be cases where you want more fine-grained control over dice rolling. In such cases, you can also create
instances of the base :class:`Die` class directly.

..  autoclass:: Die
    :members:

