.. _templating:

HTML Templates and Handlebars
*****************************

HTML templating in Foundry Virtual Tabletop uses the very flexible and easy-to-use Handlebars.js as it's templating
engine. As a developer in the FVTT ecosystem, you will end up defining HTML templates which are included as part of your
System, Module, or World. For example, suppose you define the following HTML template and save this as the file named
``public/modules/mymodule/templates/hello.html``.

.. code-block:: html

    <div>
        <h3>My Name is {{name}}</h3>
        <p>I am feeling {{mood}} to learn more about HTML templates in Foundry VTT.</p>
        {{#unless knowEverything}}
        <p>I have things to learn:</p>
        <ol>
            {{#each items}}
            <li>{{this}}</li>
            {{/each}}
        </ol>
        {{/unless}}
    </div>

This HTML template can be loaded and evaluated against an object which provides the data used for rendering. You can
accomplish this yourself using the base ``Handlebars.compile`` function, but Foundry VTT provides an extra convenience
layer with the ``renderTemplate`` method which provides asynchronous template loading and client-side caching which
you are recommended to use.

.. autofunction:: renderTemplate

When using the rendering function, provide a data object which corresponds to the variables in your HTML template. For
example:

.. code-block:: javascript

    // Specify the target template path
    const templatePath = "public/modules/mymodule/templates/hello.html"

    // Define the data provided to the Handlebars template
    const templateData = {
      name: "Edgar",
      mood: "curious",
      knowEverything: false,
      items: ["How to define a template", "How to render that template using dynamic data"]
    }

    // Render the template to compile the HTML
    renderTemplate(templatePath, templateData).then(html => {

        // Do whatever you want with the returning HTML, for example - add it to the client DOM
        document.body.appendChild(html);
    })

There is a lot you can do inside Handlebars templates, and I encourage you to spend some time with the documentation
and examples for the Handlebars.js library (https://handlebarsjs.com/) in order to learn what is possible.

As you begin to frequently render structured HTML elements within the VTT, you will likely find yourself wanting more
structure to manage the application windows and data they contain. Once you understand the basics of manual template
rendering, a great next step is to learn about the convenience layer and abstraction provided by :ref:`application`
which allows you to define render-able HTML windows using a class pattern.


Core Template Helpers
=====================

Foundry Virtual Tabletop defines several built-in template helpers that provide commonly used utility functions. These
are listed below with example HTML template usage for each.

Selected Option in a Select Field
---------------------------------

When rendering a ``<select>`` element in an HTML template, you frequently want to specify which option is currently
selected. Use the ``{{#select variable}}`` block helper as a wrapper outside of the list of ``<option>`` elements to
designate the correct option as currently selected when rendering the template. This helper is commonly used with an
``{{#each}}`` block to render the dropdown list. Example usage:

.. code-block:: html

    <select name="flavor">
    {{#select flavor}}
    {{#each flavors as |name label|}}
        <option name="{{name}}">{{label}}</option>
    {{/each}}
    {{/select}}
    </select>

Checkbox Field Checked State
----------------------------

Another common requirement when compiling a template for a ``<form>`` element is to designate whether any checkbox
elements of the type ``<input type="checkbox">`` are currently checked or not. Use the ``{{checked variable}}`` inline
helper to add the "checked" property or not depending on whether the value of ``variable`` is true. Example usage:

.. code-block:: html

    <input type="checkbox" name="hasThing" {{checked hasThing}}/>

FilePicker UI
-------------

You can render a file-picker UI element by calling ``{{filePicker target=String type=String}`` with the required field
``target`` which provides the ``name`` of the ``<input>`` element which should be modified by the FilePicker UI and
``type`` which currently accepts either "image" or "audio" as a way to filter the set of files which are shown.
Example usage is:

.. code-block:: html

    <input type="text" name="profilePath" title="Profile Image Path" value={{profile}} placeholder="File Path"/>
    {{filePicker target="profilePath" type="image"}}

Rich Text Editor (TinyMCE)
--------------------------

Another commonly useful helper is to render a rich text editor field which allows you to use the TinyMCE editor for
more user-friendly text editing by calling the ``{editor target=key content=data button=true}}`` helper where the
``target`` argument accepts the key name of the data element which should be updated when text is modified, ``content``
specifies the current value of the text pre-loaded in the editor, and ``button`` controls whether the editor is activated
through a toggled button (if true) or is always active (if false). Example usage is:

.. code-block:: html

    <div class="container">
        {{editor content=data.biography.value target="data.biography.value" button=true}}
    </div>
