..  _notifications:

Sending Notifications
*********************

The :class:`Notifications` class provides an :class:`Application` implementation which makes it easy to display
contextual notifications to clients. There should only be a singleton instance of this class, so rather than creating
your own instance please use the existing instance which is available as `ui.notifications`.

.. autoclass:: Notifications
    :members:
