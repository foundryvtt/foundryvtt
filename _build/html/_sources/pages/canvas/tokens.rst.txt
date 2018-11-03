.. _canvas-tokens:


The Tokens Layer
****************

The Tokens Layer is the middle layer of the tabletop Canvas and it contains all the Sprites which represent
actors within the game space. Tokens are placed onto the Tokens Layer by dragging actors from the Actors 
Directory (in the right sidebar) onto the canvas.

..  toctree::
    :caption: Tokens and Related Concepts
    :name: token-contents
    :maxdepth: 1

    ../tokens/token
    ../tokens/effects


Token Layer API
===============

All tokens which are rendered on the canvas are drawn as children of the :class:`TokenLayer`. The token layer may be
accessed globally as ``canvas.tokens`` and provides the following API.

..  autoclass:: TokenLayer
    :members:
