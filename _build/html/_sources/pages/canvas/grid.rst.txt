.. _canvas-grid:

The Grid Layer
**************

The Grid Layer is positioned 2nd from bottom in the layers of the Canvas. The Grid Layer is responsible for 
orienting and segmenting the game space into grid spaces. Currently only a square grid is supported but hex
grid support is flagged as a feature for work during Beta development.

The Grid provides convenience tools for measuring distance, restricting token movement, and providing guide
lines for anchoring wall segments or other canvas features.


Scene Configuration
===================

When configuring a **Scene**, there are a number of fields underneath the **Grid** section which controls how
the grid is measured and rendered.

.. image:: /_static/images/scene-configuration.jpg

Each Grid option is described below:

Grid Size
	The pixel dimensions of each grid square.

Grid Distance
	The amount of in-game distance each grid square represents.

Grid Units
	The units of measure for the grid distance.

Grid Color
	The color with which the grid lines are displayed.

Grid Opacity
	The level of transparency of the grid lines. Less opacity results in a more transparent grid.

In the **Thieves' Den** scene we use a 70 pixel grid (for compatibility with Roll20). This results in a 28 by 30
grid which overlays the map image. The grid lines are drawn in white color, but with a low opacity making them 
only faintly rendered against the background image.


Grid Layer API
==============

Mod developers may wish to interact with or manipulate this layer and can do so using the singleton instance of
the :class:`GridLayer` class which is accessible from within the client as ``canvas.grid``.

.. autoclass:: GridLayer
	:members:
