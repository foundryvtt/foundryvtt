..	_formApplication:

The Form Application
********************

A very common use case for building :class:`Application` UI elements is to edit an existing data object. The editing
workflow has many common features - you have a form of input fields which are modified and then saved, at which point
the underlying data object is saved and further downstream updates may also occur.

In order to simplify this workflow, the :class:`FormApplication` class provides a layer of abstraction which extends
the base :class:`Application` and adds some additional methods and workflows which are specifically ideal for working
with forms and saving new data.

----------

.. autoclass:: FormApplication
    :members:


----------

.. autoclass:: BaseEntitySheet
	:members:
