.. _canvasTokens:

The Tokens Layer
****************

The Tokens Layer is the middle layer of the tabletop Canvas and it contains all the Sprites which represent
actors within the game space. Tokens are placed onto the Tokens Layer by dragging actors from the Actors 
Directory (in the right sidebar) onto the canvas.

-----

The Token Layer
===============

All tokens which are rendered on the canvas are drawn as children of the :class:`TokenLayer`. The token layer may be
accessed globally as ``canvas.tokens`` and provides the following API.

..  autoclass:: TokenLayer
    :members:

-----

The Token Object
================

As a mod developer, you may find yourselves wanting to interact with the tokens which are active within a
:class:`Scene` and are drawn within the :class:`TokenLayer`. The :class:`Token` class provides a rich API for
interacting with these tokens.


..  autoclass:: foundry.Token
    :members:
