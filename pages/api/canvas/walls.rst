.. _canvas-walls:

The Walls Layer
***************

The Grid Layer is positioned 2nd from bottom in the layers of the Canvas. The Grid Layer is responsible for 
orienting and segmenting the game space into grid spaces. Currently only a square grid is supported but hex
grid support is flagged as a feature for work during Beta development.

The Grid provides convenience tools for measuring distance, restricting token movement, and providing guide
lines for anchoring wall segments or other canvas features.


Wall Configuration
==================

Walls are customized by the Game Master from within the application. To add or modify walls on the Walls 
Layer activate the Wall Layer on the primary toolbar as a player with Game Master privileges. There are 
four varietes of wall segments which can be placed into a scene:

Regular Walls
	These walls block both movement and vision. They are rendered on the Walls Layer using an off-white color.

Invisible Walls
	These walls block movement, but not vision. They are rendered on the Walls Layer using a light blue color. 

Doors
	These walls are able to be toggled between multiple states. Doors may be **closed**, **open**, or **locked**.
	Closed (or locked) doors block both movement and vision, while open doors do not block either vision or
	movement. Doors will be rendered as a small icon for player views which, if clicked, will open or close the 
	door provided it is not locked. Only Game-Master players have the ability to unlock doors. Open doors are
	rendered in green while with closed doors in orange and locked doors in red.

Secrets
	These walls work as doors, able to be toggled between **closed**, **open**, or **locked** states, however
	unlike regular doors the icon for secret doors is not shown to players and these can only be toggled by the
	Game Master. Secret doors are rendered in purple.

.. image:: /_static/images/walls-doors.jpg

In the above image (from the GM perspective), **Daulgrim** the Dwarf Ranger is exploring a small room. The white 
lines around the exterior of the room are regular walls, the fountain is surrounded by invisible walls which 
prevent the player from moving into the fountain area. There is a closed door to the right is not locked and 
could be opened by the player.


Walls Layer API
===============

Mod developers may wish to interact with or manipulate this layer and can do so using the singleton instance of
the :class:`WallsLayer` class which is accessible from within the client as ``canvas.walls``.

.. autoclass:: WallsLayer
	:members:
