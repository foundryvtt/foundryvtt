..	_playlists:

Audio Playlists
***************

Audio in Foundry VTT provides a key layer to improve immersion and enrich gameplay. The core software provides APIs 
for audio effects which are triggered programmatically as well as audio Playlists which are user-defined Entities.
Overall audio management is controlled by the :class:`Playlists` collection while the :class:`Playlist` class implements
the individual playlist entity.

----

..  contents:: Audio Playlist API

----


The Audio Collection
====================

..  autoclass:: Playlists
    :members:

    .. autofunction:: Collection#insert

    .. autofunction:: Collection#remove

    .. autofunction:: Collection#get

    .. autofunction:: Collection#index

    .. autofunction:: Collection#render

----

The Playlist Entity
===================

..  autoclass:: Playlist
    :members:
