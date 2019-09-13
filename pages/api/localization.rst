Localization Support for Language Translations
**********************************************

Foundry Virtual Tabletop includes built-in support for translating content for other languages. Localization works using three main concepts.

1. 	**Language Configuration** - The set of available languages which can be chosen by a Game-Master for use in a game world is defined in the
   	configuration object ``CONFIG.supportedLanguages``. Adding new entries to this object will make additional languages available for 
   	selection in the Game Settings interface.

2. 	**Translation Files** - For each language, strings are translated from an original string key into the localized translation using provided
	JSON translation files. Some translations may be provided by the core software, but most are included by modules or game systems. 
	Translations for the same language can be provided by multiple systems and modules, the translation keys are merged recursively in the 
	standard load order.

3.	**String Translation** - Using the available translations for a language, strings are translated when HTML is rendered in one of two ways:
	using the utility function ``game.i18n.localize(stringKey)`` or by calling the Handlebars helper ``{{localize stringKey}}`` inside an
	HTML template.

Example Localization Process
============================

Suppose the ``supportedLanguages`` object was extended to include an entry for Elvish, as follows:

..	code-block:: javascript

	CONFIG.supportedLanguages["elv"] = "Elvish";

Futhermore, suppose the following JSON translations were provided:

..	code-block:: json

	{
		"FRIEND": "Mellon"
	}

Localization for the string key "FRIEND" could be performed by calling ``game.i18n.localize("FRIEND") // returns "Mellon"`` or by using
the template helper in an HTML file:

..	code-block:: html

	<h3>Speak "Friend" and Enter</h3>
	<p>{{localize "FRIEND"}}</p>


Example Localization Module
===========================

Since localization into alternative languages is largely a community-driven process, it typically makes sense to include translation support
through a module which can be maintained and curated by the community of users who speak the target language. Fortunately, Foundry VTT makes
it easy to define a module which provides translations using the same module management tools that are available for other content.

An example module structure which provides localization support would contain (at least) 3 files with the following structure:

..	code-block:: none

	elvishVTT/
		module.json
		translate.js
		elvish.json

The ``module.json`` file provides the manifest which declares the module and what it includes. An example manifest file for a translation
module would have contents like the following:

..	code-block:: none

	{
	  "name": "elvishVTT",
	  "title": "Foundry VTT Elvish Translation",
	  "description": "An example module which translates FVTT into Elvish.",
	  "version": 0.1,
	  "author": "Your Name / Email / Discord",
	  "scripts": ["translate.js"],
	  "languages": [
	    {
	        "lang": "elv",
	        "name": "Elvish",
	        "path": "elvish.json"
	    }
	  ]
	}

Be sure to substitute a unique module name and match the same language key which is also used to declare the language in the 
``CONFIG.supportedLanguages`` object. The included translation script is very simple, and is only required to register the language with that 
configuration object with the FVTT framework is first initialized.

..	code-block:: javascript

	Hooks.once("init", function() {
		CONFIG.supportedLanguages["elv"] = "Elvish";
	});

..	note:: Be sure that the language key added to the supportedLanguages object matches the translation defined in the module.json file.

Users who install this module and activate it in their world will be able to select the included language (or languages) as a valid option
in the game settings menu and translations from the provided JSON files will be automatically applied where applicable.
