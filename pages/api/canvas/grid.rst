.. _canvas-grid:

The Grid Layer
**************

The Grid Layer is positioned 2nd from bottom in the layers of the Canvas. The Grid Layer is responsible for 
orienting and segmenting the game space into grid spaces. Currently only a square grid is supported but hex
grid support is flagged as a feature for work during Beta development.

The Grid provides convenience tools for measuring distance, restricting token movement, and providing guide
lines for anchoring wall segments or other canvas features.

Mod developers may wish to interact with or manipulate this layer and can do so using the singleton instance of
the :class:`GridLayer` class which is accessible from within the client as ``canvas.grid``.

.. autoclass:: GridLayer
	:members:
