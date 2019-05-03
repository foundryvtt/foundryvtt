Game System Development
***********************

This page provides an overview and tutorial of the basic steps required to create an entire Game System from scratch
as a module which can be used for your homebrew games or shared with other players.

As an example of a fairly feature-complete game system implementation - please feel free to examine the D&D5e system
which has open source code: https://gitlab.com/foundrynet/dnd5e

The System Specification
========================

Each game system must include a ``system.json`` file which provides the system specification. This file is required and
must be included at the root level of your system folder. The system folder itself must match the ``"name"`` attribute
designated within the specification file. For example, if we create a game system with the name ``mysystem``, then we
would create the file ``public/systems/mysystem/system.json``.

..  code-block:: javascript

    {
      "name": "mysystem",
      "title": "Minimal World Building",
      "description": "Many details here.",
      "version": "1.0.0",
      "author": "John Doe",
      "scripts": [
        "scripts/system-script-1.js",
        "scripts/system-script-2.js"
      ],
      "styles": [
        "styles/system-styles-1.css",
        "styles/system-styles-2.css"
      ],
      "packs": [
        {
          "name": "monsters",
          "label": "Monsters",
          "system": "mysystem",
          "module": "mysystem",
          "path": "packs/monsters.db",
          "entity": "Actor"
        },
        {
          "name": "items",
          "label": "Items",
          "system": "mysystem",
          "module": "mysystem",
          "path": "packs/items.db",
          "entity": "Item"
        }
      ],
      "languages": ["en"],
      "initiative": "1d20",
      "gridDistance": 10,
      "gridUnits": "ft"
    }

name
    Choose a unique system identifier. This should be an all lower-case string with no special characters. This name
    must align with the name of the parent directory within which you create the system.

title
    Provide a human readable title for the game system which is displayed when selecting from available systems in the
    World creation menu.

description
    This field can contain a more lengthy description of the game system. This text will be used to display help or
    contact information about your system and is also a good place to include any special licensing or attribution
    information that you need to distribute.

version
    The system version number can be a number or a string depending on what versioning scheme you prefer to use. You
    should always increment the system version number if you make changes to the Data Template which is described
    below. When the system version is changed, the platform will automatically migrate all content to match the new
    Data Template schema.

author
    Provide your name as the system creator. This field can be any string if you wish to include an email address or
    other contact information also.

scripts
    You can designate JavaScript files which should be included in the game session whenever this System is being used.
    Each listed script path should be relative to the system root directory. All scripts which exist will be
    automatically included in the game session and loaded in their listed order. As a best practice, I recommend
    serving system scripts out of a subdirectory named ``scripts``, but this is not required.

styles
    You can designate CSS files which should be included in the game session whenever this System is being used.
    Each listed stylesheet path should be relative to the system root directory. All stylesheets which exist will be
    automatically included in the game session and loaded in their listed order. As a best practice, I recommend
    serving stylesheets out of a subdirectory named ``styles``, but this is not required.

packs
    Game systems may come bundled with Compendium packs which add pre-generated content for Actors, Items, or other
    supported Entity types. Compendium packs are defined as objects which have their own internal metadata. For each
    included compendium. These options are listed below:

pack.name
    The compendium pack name - this should be a unique lower-case string with no special characters.

pack.label
    The compendium pack label - this should be a human readable string label which is displayed in the Compendium
    sidebar in-game.

pack.system
    Since you are creating compendium content specifically for your system, be sure to reference that the content
    inside each compendium pack requires the system by providing the system name that you chose.

pack.module
    The module attribute of each compendium pack designates which content module provided the pack, since this pack is
    coming from the system itself we can once again provide the system name.

pack.path
    The path for each compendium pack should designate a database file with the ``.db`` extension. As a best practice, I
    recommend placing these database files within the ``packs`` subdirectory. You do not need to create these files
    yourself. If a system includes a compendium pack, the database file for that pack will be created automatically
    when the system is loaded, if it does not already exist.

pack.entity
    Each compendium pack must designate a specific Entity type that it contains. Valid entities include ``Actor``,
    ``Item``, or ``Scene``.

languages
    The game system may designate an array of languages that it natively supports. At the moment, Foundry Virtual
    Tabletop does not support localization preferences, but in the future this field will be useful.

initiative
    Not every game system uses the concept of initiative, but this field provides the default dice rolling formula
    that can be used to determine the turn order of Tokens within the combat tracker.

gridDistance
    This field designates the default amount of distance that a single grid space should typically represent under this
    game system. This value configures the default value used when a new Scene is created, but can always be changed
    for each Scene independently.

gridUnits
    This field designates the standard unit of measure used to describe distances under this game system. This defines
    the default value used when new a new Scene is created, but can always be changed for each Scene independently.


The Data Template
=================

In addition to the System Specification file described above, each game system must include a Data Template file named
``template.json`` at the root-level of the system folder which defines the data model used by Actors and Items under
this game system. For example, if we create a game system with the name ``mysystem``, then we would create the file
``public/systems/mysystem/template.json``.

..  code-block:: javascript

    {
      "actor": {
        "data": {
          "health": {
            "label": "Health",
            "type": "Number",
            "value": 10,
            "max": 10
          },
          "level": {
            "label": "Level",
            "value": 1
          }
        },
        "hero": {
          "power": {
            "label": "Power",
            "type": "Number",
            "value": 1,
            "max": 3
          }
        },
        "monster": {
          "corruption": {
            "label": "Corruption",
            "type": "Number",
            "value": 0
          }
        }
      },
      "item": {
        "data": {
          "weight": {
            "type": "Number",
            "label": "Item Weight"
          },
          "price": {
            "type": "Number",
            "label": "Item Price"
          }
        },
        "weapon": {
          "damage": {
            "label": "Weapon Damage"
          }
        },
        "trinket": {
          "ability": {
            "label": "Special Ability"
          }
        }
      }
    }

The basic structure of the data template is the following. Top-level entries specify data schemas for the ``actor``
and ``item`` entity types. Within each entity type, the ``"data"`` entry defines shared data elements which all
entities of that type have. Objects defined as siblings to ``"data"`` define specialized entity sub-types which may
have data elements which extend or overwrite those defined by the basic data object.

In this example, we have defined two types of Actor: ``hero`` and ``monster``. All Actors (both heroes and monsters)
have attributes for "health" and for "level" while only heroes have "power" and only monsters have "corruption".

Similarly for Item entities, we have defined two specific item types: ``weapon`` and ``trinket``. All items have a
weight and a price, but weapons also define a "damage" attribute while trinkets define a special "ability".

Structure of Attributes
-----------------------

Each data attribute must be an object, but beyond that it is entirely up to you what fields you store for each. There
are some best practices, including to track a string ``label`` which can be used to dynamically render help text or
form field labels, or to include a ``dtype`` which can be used to ensure that the type of saved data matches
expectations.

Attributes as Resources
-----------------------

Specific attributes will be recognized by the game system as a "resource" if (and only if) they contain keys which
define a ``value`` and a ``max``. In the above example, "health" or "power" would be detected as a resource - although
"corruption" could also be detected as a resource if a maximum value was defined at a later point.

How the Data Model is Applied
-----------------------------

When a new Entity is created in a game using this system, it will automatically have it's own internal data populated
to conform to the schema defined in the system template. For example, when using this system, if I were to execute the
following code:

..  code-block:: javascript

    Item.create({name: "Test Item", type: "trinket"}).then(item => {
      console.log(item.data);
    })

I would observe that the item was created and assigned an ID, and the ``data`` contained within the item matches the
expected contents defined by my game system template.

..  code-block:: javascript

    {
      "_id": "e6c7US1VK2cqejVJ",
      "name": "Test Item",
      "permission": {
        "default": 0
      },
      "data": {
        "weight": {
          "type": "Number",
          "label": "Item Weight"
        },
        "price": {
          "type": "Number",
          "label": "Item Price"
        },
        "ability": {
          "label": "Special Ability"
        }
      },
      "flags": {},
      "type": "trinket",
      "img": "icons/mystery-man.png"
    }

System File Structure
=====================

If you have followed these steps, you would arrive with a game system that has the following file structure:

.. code-block:: text

    public/systems/mysystem/
        system.json
        template.json
        scripts/
            system-script-1.js
            system-script-2.js
        styles/
            system-styles-1.css
            system-styles-2.css
        packs/
            monsters.db
            items.db

To share the system with other players, simply zip the ``mysystem`` directory and distribute it using whatever
mechanism is most convenient. Players can download the system and extract it within their own systems folder - making
the system available for them to use in Foundry Virtual Tabletop!
