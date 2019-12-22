.. _playlistAPI:

The Audio Playlist Entity
*************************

Audio in Foundry VTT provides a key layer to improve immersion and enrich gameplay. The core software provides APIs 
for audio effects which are triggered programmatically as well as audio Playlists which are user-defined Entities.
Overall audio management is controlled by the :class:`Playlists` collection while the :class:`Playlist` class implements
the individual playlist entity.

----

The Audio Collection
====================

..  autoclass:: Playlists
    :members:
    
----

The Playlist Entity
===================

..  autoclass:: foundry.Playlist
    :members:

----

Playlist Configuration Sheet
============================

.. autoclass:: PlaylistConfig
    :members:

----

Playlist Track Configuration Sheet
==================================

.. autoclass:: PlaylistSoundConfig
    :members:
