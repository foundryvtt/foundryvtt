.. _canvas-background:

The Background Layer
********************

The Background Layer is the bottom-most layer of the tabletop Canvas. The Background Layer is responsible for 
rendering your underlying background image and defining the interactable area of the scene. By default, 
the canvas uses an interactive area which is 1.5 times the dimensions of your background image (with a minimum
of 1000px.)

Mod developers may wish to interact with or manipulate this layer and can do so using the singleton instance of
the :class:`BackgroundLayer` class which is accessible from within the client as ``canvas.background``.

.. autoclass:: BackgroundLayer
	:members:
