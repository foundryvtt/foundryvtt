..	_templating:

Templating and Handlebars
*************************

HTML templating in Foundry Virtual Tabletop uses the very flexible and easy-to-use Handlebars.js as it's templating
engine. Documentation for Handlebars.js is available here: https://handlebarsjs.com/

The basic template rendering workflow is that the :class:`Application` defines it's own `getData()` method which vends
an object of data suitable for use in templating. For example, suppose an application defined the following:

.. code-block:: javascript

    getData() {
      return {
        name: "Edgar",
        mood: "curious",
        items: ["one", "foo", "bar"]
      }
    }

When defining an HTML template, these variables will be available to use through the embedded handlebars expressions
described in the above documentation. A simple HTML template might look something like:

.. code-block:: html

    <div>
        <h3>My Name is {{name}}</h3>
        <p>I am feeling very {{mood}} today to learn more about FVTT templating.</p>
        <p>I have several items ready to go:</p>
        <ol>
            {{#each items}}
            <li>{{this}}</li>
            {{/each}}
        </ol>
    </div>

Core Template Helpers
*********************

The core FVTT modules provides several built-in template helpers which provide commonly used utility functions.

FilePicker UI
=============

You can render a file-picker UI element by calling ``{{filePicker target=String type=String}`` with the required field
``target`` which provides the ``name`` of the ``<input>`` element which should be modified by the FilePicker UI and
``type`` which currently accepts either "image" or "audio" as a way to filter the set of files which are shown.
Example usage is:

.. code-block:: html

    <input type="text" name="profilePath" title="Profile Image Path" value={{profile}} placeholder="File Path"/>
    {{filePicker target="profilePath" type="image"}}

Rich Text Editor (TinyMCE)
==========================

Another commonly useful helper is to render a rich text editor field which allows you to use the TinyMCE editor for
more user-friendly text editing by calling the ``{editor target=key content=data button=true}}`` helper where the
``target`` argument accepts the key name of the data element which should be updated when text is modified, ``content``
specifies the current value of the text pre-loaded in the editor, and ``button`` controls whether the editor is activated
through a toggled button (if true) or is always active (if false). Example usage is:

.. code-block:: html

    <div class="container">
        {{editor content=data.biography.value target="data.biography.value" button=true}}
    </div>
