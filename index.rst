.. _home:

Foundry Virtual Tabletop
************************

Welcome to the documentation for **Foundry Virtual Tabletop**, an application for organizing and running tabletop
roleplaying games in a beautiful and intuitive web-based application.

.. raw:: html

    <iframe width="640" height="360" src="https://www.youtube.com/embed/Iz-2lW3Ac_w" frameborder="0" allow="autoplay;
     encrypted-media" allowfullscreen style="margin-bottom:1em;"></iframe>

..  toctree::
    :caption: Table of Contents
    :name: master-contents
    :maxdepth: 1

    self
    pages/features
    pages/faq
    pages/license
    pages/hosting
    pages/tutorial
    pages/entities
    pages/dice
    pages/api
    pages/systems
    pages/modules
    pages/partnerships
    notes/notes


About Foundry Virtual Tabletop
==============================

Foundry Virtual Tabletop is an application for running multi-player tabletop roleplaying games using an intuitive 
and feature-rich web-based application. I am a long-time fan of tabletop gaming and the communities which this 
hobby cultivates, but I have been unsatisfied with existing tools for sharing gaming experiences with my friends.

I envisioned a software that captured the best parts of existing tools while innovating to provide deeper layers 
of immersion and storytelling tools that can empower creators to bring their worlds to life in the imagination of 
players. I imagined software that allowed those creators to have autonomy and control over their content with
a variety of supported hosting models. I imagined making this tool easily accessible to the community with a 
browser-based web technologies. Most importantly, I thought about providing talented and imaginative developers
with an open sandbox with the tools and space to create powerful and customized systems and modules.

Foundry Virtual Tabletop is the result of that vision and is created by a fan and dungeon master who loves creating
rich experiences for players for others in the community who share that goal. I am working hard to contribute back
to the community by creating technology that I myself would love to use in hopes that other dungeon masters value
the same things that I do.

Foundry VTT attempts to innovate in several key areas.

1.  **Built using modern web technologies.** Foundry VTT is built with a highly modern stack of proven web technologies
    which provide a great user experience directly in the web browser. Compared to other leading options in the VTT
    space, Foundry VTT can accomodate larger maps with more complex walls and lighting while featuring responsive
    application performance.

2.  **Intuitive and full-featured user experience.** I am working hard to make sure that Foundry VTT offers all
    the core features that veterans of other virtual tabletops have come to expect while improving the usability
    of those features with an intuitive and minimalistic interface which makes the software simple to use.

3.  **Empower mod developers.** Foundry VTT is built upon a rich front-end JavaScript API which allows for creators
    with programming experience to create - well, honestly almost anything! I have designed FoundryVTT to directly
    expose the base objects and APIs which control the game to the end user and the product supports easily including
    mods. If you have a special mechanic or system that you want to include in your game, the openness of the
    Foundry VTT platform allows you to bring that vision to your players.

4.  **System agnostic.** The core Foundry Virtual Tabletop software does not commit you to any particular game system.
    The underlying tools and features are system agnostic and can be applied to many different rule-sets. The advantage
    of this approach is that Foundry Virtual Tabletop can scale the power of it's framework and design to accomodate
    all manner of tabletop RPGs. The disadvantage of this approach is that game systems need to be developed which
    make use of the tools. During the early stages of development, there are only a few game systems which are
    supported - but as the VTT grows I am excited to work with system developers to add support for additional game
    system implementations.

5.  **Avoid feature gating.** I want to develop a core toolkit which delivers great storytelling features for all
    Foundry VTT users. There will not be any premium features which are locked behind paywalls or subscriptions. All
    core features like dynamic lighting, compendium packs, character sheets, audio controls, event triggers, and more
    are included with the base product.

6.  **No reliance on an external service or platform.** As game masters we invest hundreds (if not thousands) of
    hours painstakingly crafting rich worlds. That creativity and artistic expression should not be tied to one single
    platform or service. Since Foundry VTT is self-hosted, you will always be able to rely upon the software to run
    your game sessions. There is never any risk of a required service getting shut off or going away. Game data is
    stored in an embedded database in a standardized format which means that even if you end up moving away from 
    Foundry VTT in the future, you will still have access to all your data that you can migrate to a new platform.


-----

Hosting Modes
=============

There are two primary means of hosting a game session in Foundry VTT.

1.  **Peer-to-peer using a native application.** In this mode, the session host runs an app on their own computer which
    hosts the game session and players connect directly to the hosted game.

2.  **Dedicated standalone server.** Foundry VTT also supports a "headless" installation on a Linux or Windows server
    which allows the game to be persistent where both players and GMs can connect to the world.


-----


Try the Demo
============

Please feel free to try a working demo of my progress thus far. As I develop and refine new features in my local test
environment I am pushing them (often daily) to the development/demo server. Please feel free to check back frequently
to keep an eye on my progress!

As you are visiting the demo, please be aware of several key factors and ground rules.

1.  This demo showcases the current Beta version of Foundry VTT. The software is not yet feature complete, and you may
	encounter some minor bugs, but it is an accurate reflection of the current experience with the Beta software.

2.  I am hosting this demo server for a limited number of sample player accounts. Please don't monopolize the limited
    slots by leaving your browser connected for hours.

3.  I will reset the demo regularly back to a "safe state" - do not expect any data to be saved.

4.  Don't be a jerk.

.. note:: The current Foundry VTT demo password is ``foundry``. This password may rotate if needed to prevent abuse.

Those disclaimers aside, you can find the demo here: http://foundryvtt.com:30000


-----

Join our Discord
================

.. image:: http://ashenfoundry.s3.amazonaws.com/media/user_1/screen/discord_banner-2017-07-09.png
    :target: https://discordapp.com/invite/DDBZUDf

If you would like to get involved in Foundry Virtual Tabletop development and participate in conversation with an
active group of fellow RPG enthusiasts, please join us in `Discord <https://discordapp.com/invite/DDBZUDf>`_.
The Discord server is the best place to get daily updates on product development, learn about testing opportunities,
and provide feedback on how Foundry VTT can achieve its greatest potential. Hope to see you there!
