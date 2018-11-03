..  _ui:

User Interface Elements
***********************

Mod developers may wish to re-use standard user interface elements, referred to as **Applications**. This page details
the existing application classes which can easily be extended to create an interactive interface element within the
DOM.


Dialog Window
=============

The :class:`Dialog` class provides an extension of :class:`WindowApplication` which makes it easy to create modal
dialog prompts.


.. autoclass:: Dialog
    :members:

    .. autofunction:: Application#render



Tabbed Navigation
=================

To make effective use of screen space, it often makes sense to sibling concepts into a tabbed navigation area. The
:class:`Tabs` class helps to implement this easily. Simply create instances of the :class:`Tabs` class when you
register event listeners for your UI element and the instance will do the rest of the work for you.

..  autoclass:: Tabs
    :members:
