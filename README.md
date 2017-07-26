# hubot scripts
Collection of basic scripts for integrating into a Hubot

## diceroll.coffee
Lets your bot roll dice for you. It uses the notation system used in Dungeons and Dragons. So rolling 1 six-sided die is written as *1d6*. Simply ask "roll [die type]", or "roll a [die type]".

**example**:

roll 2d8

*This will result in 2 eight-sided dice being rolled.*

roll a d20

*This will result in 1 twenty-sided die being rolled*

## numbers.coffee
Let's your bot generate random-ish numbers (using javascript, so not perfectly random).

**example**

give me a random number between 3 and 7

*This will generate a number between 3 and 7, can also more briefly be called as:*

number 3 7

number under 10

*This will generate a number between 0 and 10*