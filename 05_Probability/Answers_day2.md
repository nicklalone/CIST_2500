# Day 2 - Practice Problems, Experiments, Addition, and Multiplication: 

Today is simply practice day. We went through Classical Probability so we know what we're at least starting with. Each question will introduce something new. So, working through these should be useful, I hope! 

01. [Formulas](#formulas)
02. [Classical Probability - Throwing Axes](#1)
03. [Classical Probability - Selecting a Tribute](#2)
04. [Experimental vs Classical - Dice](#3)
05. [Experimental vs Classical - Coins](#4)
06. [Experimental - MOBA Characters](#5)
07. [Complement of a Set - Passing](#6)
08. [Complement of a Set - 7-sided die](#7)
09. [Experimental - Colors and a 4-Sided Die](#8)
10. [Addition Rules - Sticky Hands](#9)
11. [Addition Rules - Mutual Exclusivity](#10)
12. [Multiplication Rules - Joint Probability + Dependence](#11)
13. [Multiplication Rules - Joint Probability + Independence](#12)

## <a id="formulas"></a>Formulas

There are so many formulas for Probability. I found a reasonable example of them at: 

https://medium.com/data-comet/probability-rules-cheat-sheet-e24b92a9017f

And the cheat sheet is below: 

![Cheat Sheet for Probability](/images/formulas.png)

## <a id="1"></a>Classical Probability - Throwing Axes

I am throwing axes at the local axe throwing bar. My friends and I begin betting and decided to base a multiplier of our throws as the probability of an event occurring. 

If I throw an axe at numbers 1-12 (S = {1,2,3,4,5,6,7,8,9,10,11,12}), what is the probability I will hit an even number?

How do we approach this problem?

P(2,4,6,8,10,12) = 6/12 or 1/2

## <a id="2"></a>Classical Probability - Selecting Tribute

It is the apocalypse and we are trying to rebuild society. Each year, we select a person from each region to represent that region in the games. Given random selection of 30,000 men and 39,000 women, what is the probability than the selected tribute will be a man?

How do we approach this problem?

P(woman) = 30,000/69,000 = .4347

## <a id="3"></a>Experimental vs Classical - Dice

Roll a die 28 times and record your roles. 
(If you don't have dice, please go here:
http://www.randomservices.org/random/apps/Dice.html)

Place those data in here: 

|Dice Face|Result|
|---------|------|
|1|1|
|2|4|
|3|1|
|4|3|
|5|4|
|6|3|
|7|4|

On a theoretical, perfect die, what is the probability to roll a 5?

1/7 or .1428

On your die you have rolled, what is the probability to roll a 5?

4/17 or .2352

## <a id="4"></a>Experimental vs Classical - Coins

Flip a coin 27 times and record your results.

|Coin Face|Result|
|---------|------|
|Heads|10|
|Tails|17|

17/27 = 63%

## <a id="5"></a>Experimental - MOBA Characters

I am looking for a new character to play in a MOBA. There are 52 available characters. Looking at their capabilities, we can list them out. 
* 16 are offense.
* 17 are support.
* 15 are for mid/Jungle.
* 12 Are Gimmicks.
* 60 Characters?

No, we can subtract 8: 
* 5 are Offense but can do suport.
* 3 is a gimmick and mid.

So, 60-8 total characters or 52.

If I ask the game to select 1 of these, what is the probability that the game chooses 1 that is offense or a support?

How do we approach this?

P(offense OR support) = P(offense) + P(support) - P(Offense AND Support)
= 16/52 + 17/52 - 5/52 = .5384

## <a id="6"></a>Complement of a Set - Passing

There is an 87% chance that a student will pass this class. What is the likelihood that a student will fail? Please provide your answer in a complete sentence explaining why you made the choice you did as well as showing your work.

For example, "Given an 87% chance of passing, we would expect to use the complement of the set to answer this question or the formula XXXX. With that in mind, the math of this is (formula + math answer here)."

Well, given an 87% chance of passing, the complement of this set is 13% of the opposite thing which would result in 100%. From this, we can say that 13% is the likelihoo that a student would fail using 1-.87.

## <a id="7"></a>Complement of a Set - 7-sided Die

I have a 7-sided die. We can assume that each face on the die has an equal chance to be rolled. If I roll the dice, what is the probability of rolling a 5 or a 7? What is its complement? 

State your answers in percentages and then show me a verifcation of your answer. 

P(5,7) = 2/7
P(1,2,3,4,6) = 5/7

## <a id="8"></a>Experimental - Colors and a 4-Sided Die

|Color | Number of Results |
|------|-------------------|
|Brown|21|
|Orange|10|
|Green|13|
|Yellow|26|

Given the above results, what is the experimental probability of spinning the color Orange?

Total of all the colors is 70. The object in mind is 10. So, 10/70 or .142 or 14.2%

## <a id="9"></a>Addition Rules - Sticky Hands

In a bag, there are a huge number of sticky hands - those rubber strings with a hand on the end. Inside the bag, there are 24 blue hands and 21 Orange Hands. Of those, 9 of the blue hands and and 14 of the orange hands are skeletal. If we reach into the bag and pick up 1 hand at random, what is the probability of choosing an Orange Hand OR a Skeletal Hand.

P(Orange Hand or a Skeletal Hand) = P(Orange Hand) + P(Skeletal Hand) - P(Orange Hand and Skeletal).

P(Orange Hand or a Skeletal Hand) = 21/45 + 23/45 - (23/45) = 44/45 - 23/45 = 21/45 = .466

## <a id="10"></a>Addition Rules - Mutual Exclusivity

So think about this, we have a 16-sided die. If I roll that die, what is the probability of rolling a 15 or a 7? Why did you calculate it that way?

P(15 or 7) = 1/16 + 1/16 = .125

## <a id="11"></a>Multiplication Rules

I have 3 decks of traditional playing cards. Each deck consists of 4 of each card from Ace to King. Each card is split into 4 suits (Diamonds, Hearts, Spades, and Clubs) and 2 colors (red and black).

Through the discussion of Dependence, think about the formula. What is P(F|E). 

If I combine all of the cards together, what is the probability I would draw a Face Card? And then without replacing that card, what is the probability I would draw a a 9?

Cards total = (52 * 3) = 156
Face Cards = (12 * 3) = 36 (Jack, Queen, King)
Other Cards = 52 - 12 = 40 (A,2,3,4,5,6,7,8,9,10) = 40 * 3 = 120

How do we approach this? What is the Solution?

P(Face Card and a 9) = P(Face Card) * P(face card | 9)

P(Face Card and a 9) = (36/156) * (12/155) = .01786

## <a id="12"></a>Multiplication Rules - Independent Events and Failing Stats

A study of students in undergraduate stats courses found the probabilities that a student will fail the course for the following reasons. 

|Probabilities of Failing a Stats Course|
|Reason|Probability|
|------|-----------|
|Attendance under 70%|.1356|
|Did not read outside of class|.2478|
|Thinks they know better and acts on it|.1026|
|Caught Cheating|.1954|
|Majority of assignments late or not submitted|.3186|

What is the probability that a student fails stats for Attendance under 70%, Caught Cheating, and that the majority of assignments late or not submitted?

P(Attendance under 70%, Caught Cheating, and that the majority of assignments late or not submitted?) = 
= P(Attendance under 70%) * P(Caught Cheating) * P(Majority of Assignments Late or Not Submitted)
= .1356 * .1954 * .3186
= .00844
