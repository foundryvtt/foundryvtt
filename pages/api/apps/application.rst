..	_application:

The Application Class
*********************

The :class:`Application` class provides the foundation for UI elements in Foundry VTT. As a developer, you 
should extend this class to define your own custom UI concepts which can be rendered in-game.

.. autoclass:: Application
    :members:


Application Example
===================

This section provides a working example Application that could be defined in your game. When creating a module, or
a UI component of a game system, you would pair this JavaScript code which defines the Application with an HTML
template (``options.template``) as well as accompanying CSS rules to define how the HTML should be styled.

..	code-block:: javascript

    /**
     * A simple demo application which displays each active player's impersonated Actor
     * Displays the portrait and health bar for that Actor
     */

    class PartySummary extends Application {

      /**
       * Define default options for the PartySummary application
       */
      static get defaultOptions() {
        const options = super.defaultOptions;
        options.template = "public/modules/party-summary/templates/summary.html";
        options.width = 600;
        options.height = "auto";
        return options;
      }

      /* -------------------------------------------- */

      /**
       * Return the data used to render the summary template
       * Get all the active users
       * The impersonated character for each player is available as user.character
       */
       getData() {
        return game.users.entities.filter(u => u.active);
       }

      /* -------------------------------------------- */

      /**
       * Add some event listeners to the UI to provide interactivity
       * Let's have the game highlight each player's token when their name is clicked on
       */
      activateListeners(html) {

        html.find(".actor-name").click(ev => {
          ev.preventDefault();

          // Get the actor which was clicked and the active token(s) for that actor
          let actorId = ev.currentTarget.parentElement.getAttribute("data-actor-id"),
              actor = game.actors.get(actorId),
              tokens = actor.getActiveTokens(true);

          // Highlight active token(s) by triggering the token's mouse-over handler
          for ( let t of tokens ) {
            t._onMouseOver();
          }
        })
      }
    }

To render your party summary UI to the player, all that needs to be done is to create an instance of the 
application class and call it's render function.

.. code-block:: javascript

    let ps = new PartySummary();
    ps.render(true);

