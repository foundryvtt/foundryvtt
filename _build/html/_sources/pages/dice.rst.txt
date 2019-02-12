Rolling Dice
************

At the core of most tabletop games is the requirement to roll dice. This page details the support for various dice
macros which are provided by Foundry VTT. The software has a rich underlying API

Basic Rolls
===========

For basic dice rolls, you and your players will most frequently type a `formula` in chat which is automatically parsed
and evaluated to display a dice roll result. Dice roll formulas begin with either `/roll` or `/r` for short. The
syntax for a basic roll imitates common RPGs where ``/roll ydX`` would roll an X-sided die y times. For example,
``/roll 5d6`` would roll five six-sided dice (d6). Generally:

* ``/roll {N}d{S}`` Roll ``N`` dice with ``S`` sides each and return the total result.

Dice rolls also accept modifiers after the roll which alter the behavior of the group of rolled dice. In general, roll
modifiers work by adding extra syntax on to the end of the roll, ``/roll ydX{mods}``.

Keep or Drop Results
--------------------

A desired number of high or low rolls may be kept or dropped using the following roll modifiers.

* ``kh{N}`` Keep the highest ``N`` dice out of the group that were rolled.
* ``kl{N}`` Keep the lowest ``N`` dice out of the group that were rolled.
* ``dh{N}`` Drop the highest ``N`` dice out of the group that were rolled.
* ``dl{N}`` Drop the lowest ``N`` dice out of the group that were rolled.

Re-roll Certain Results
-----------------------

Specific results may be re-rolled by specifying a re-roll target or range.

* ``r{y}``      Re-roll any dice where the result was ``y``.
* ``r>{y}``     Re-roll any dice where the result was greater than ``y``.
* ``r>={y}``    Re-roll any dice where the result was greater than or equal to ``y``.
* ``r<{y}``     Re-roll any dice where the result was less than ``y``.
* ``r<={y}``    Re-roll any dice where the result was less than or equal to ``y``.

Explode Certain Results
-----------------------

"Exploding" dice are supported where further dice of the same type are rolled until no more results of a certain value
have been rolled.

* ``x{y}``      Roll an additional dice each time a die rolls ``y``.
* ``x>{y}``     Roll an additional dice if any dice rolls greater than ``y``.
* ``x>={y}``    Roll an additional dice if any dice rolls greater than or equal to ``y``.
* ``x<{y}``     Roll an additional dice if any dice rolls less than or equal to ``y``.
* ``x<={y}``    Roll an additional dice if any dice rolls less than or equal to ``y``.

Count Successes
---------------

You can roll a set of dice and count the number of times a certain result or range of results was achieved.

..  warning:: This is still TO-DO. The planned syntax is described below but not yet added

* ``s{y}``      Count the number of dice which resulted in ``y``.
* ``s>{y}``     Count the number of dice which rolled greater than ``y``.
* ``s>={y}``    Count the number of dice which rolled greater than or equal to ``y``.
* ``s<{y}``     Count the number of dice which rolled less than or equal to ``y``.
* ``s<={y}``    Count the number of dice which rolled less than or equal to ``y``.

