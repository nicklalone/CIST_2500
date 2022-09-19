# Probability and Statistics

From your textbook, it introduces this section in the following ways: 

1. What are the chances that sales will decrease if we increase prices?
2. What is the likleihood a new assembly method will increase productivity? 
3. How likely is it that the project will be finished on time?
4. What is the chance that a new investment will be profitable?

Your book then goes on to define the word probability by saying: 

> probability is a numerical measure of the likelihood that an event will occur. -page 181 in your textbook.

We often think of probability as something that measures the certainty an event will occur. However, in as much as we calculate certain, we also calculate uncertainty as probability is as much a calculation of how likely and how unlikely simultaneously. 

For example, let's say we are working to understand the cosequences of raising prices on sales. Probability is calculated along a continuum of 0 > 1 or 0 > 100%. 

Think of it like this: 

|----------------------|----------------------|

0           		   50                    100

To understand probability, we will be going through some theories, examples, and various ways to calculate probability. Please find the table of contents below: 

----------  Table of Contents  ----------

[Day 1](#day1):
1. [Experiments](#experiments)
2. [Multi-step Experiments.](#counting)
3. [Addition Law](#addition)
5. [Conditional Probability.](#conditional)
6. [Exercises](#day1exercises)

------------------------------------------------------------

# <a id="day1"></a>Day 1:

Today, we will be working to understand 4 things. First, we will think about probability. The term, "Classical probability." Next, we will talk about the various ways to think about experiments as well as multi-step experiments. We will finally discuss Addition, Multiplication, and Conditional Probabilities. 

All along the way, we will situate ourselves using formulas. Those formulas and examples will be found below where appropriate. 

We must begin with The objectives for this particular day are: 

|Objective | Page Numbers in Textbook | 
|----------|--------------------------|
|Identify Sample Spaces | Page 182, 194 (notes) |
|Calculate Probabilities| Classical: (187-88, 194, 233) Experiments (182-83, Multi-step 182-83)|
|Mutually Exclusive vs. Indepdendent| ME: (200,207), I: (206,207,219) |

What these objectives mean are that by the end of this week, we'll have an idea about probability, how to calculate it, and when to apply different calculations.

------------------

Let's begin by identifying some Terms of Importance

|Term    | Definition |
|--------|------------|
|Event | a Collection of Sample points (e.g. a coin toss, a die roll, a card drawn, or something with a collection of potential outcomes that can be measured.)|
|Outcome | Each individual result probable for an event. | 
|Probability Experiment | A process that generates well-defined outcomes that are generated with chance|
|Probability of an event | Equal to the sum of the probabilities of sample points in the event|
|Sample Space| the set of all experimental outcomes that is typically marked with S. Because it contains all the experimental outcomes, it has a probability of 1 or 100%; P(S)=1|
|Multi-step experiments | An experiment that consists of a sequence of steps|
|Tree Diagrams | Graphic representation that helps visualize a multi-step experiment|
|Mutually Exclusive Events | the probability of both the events occurring at the same time is equal to zero. P(A and B) = 0 |
|Independent Events | Two events are independent if the occurrence of one event does not affect the chances of the occurrence of the other event. |

Before we get into experiments, lets talk a little bit about what we call "classical" probability and how to think about it. This will establish our point of origin and then we'll build for that.

To wit, there is a series of logical steps that we can take with probability that can fit probabilistic calculations: 

1. Gather sample spaces. (think about what you're calculating the probability of)
2. Tree Diagrams (draw it out)
3. Write the sample space as a mathematical figure and represent it as a fraction, decimal, or percentage (it is up to you.) 

#### The Law of Large Numbers

The law of large numbers states that if one performs the same experiment over and over, the results obtained will resemble the "True" probability. 

What does this resemble? That's right, the Central Limit Theorm!

Remember that the theorem says that if you have a population with mean μ and standard deviation σ and take sufficiently large random samples from the population with replacement, then the distribution of the sample means will approach μ.

Wikipedia has a very large entry on this: https://en.wikipedia.org/wiki/Law_of_large_numbers and it's worth at least glancing at it.

So let's start walking through the steps.

### Let's Gather Some Sample Spaces: 

1. Rolling 2 Dice, what is the sample space of all outcomes?
2. A coin and a die, what is the sample space for rolling heads and a prime number?
3. 2 different dice, what is the sample space of rolling a multiple of 2?

### Tree Diagrams - A Good Visualization Technique

Think about alleles. Ugh, I know. Why am I getting science in your non-math, math course? Well, alleles are an amazing example of a visualization tree. They look like this: 

![A Tree Diagram](/images/prob-tree.gif)

And if we want a more specific diagram, we can think about what happens with regard to the potential outcomes for a heteronormative couple having children ([from this excellent lecture](https://www.youtube.com/watch?v=sbbYntt5CJk&ab_channel=Geek%27sLesson)): 

![A Tree Diagram](/images/prob-fam.png)

Note in this tree that in the bottom row all of the outcomes are in order from oldest to youngest and that the final row of the third generation encapsulates all of the possible outcomes. This is a feature of these and i'll repeat this a little further down.

What these diagrams are good for is really visualizing the possibilities and thinking about if we need to add the outcomes together or multiply them or something else. Here is a longer definition of tree diagrams that also includes instructions on their creation: 

> A tree diagram can be used to represent the outcomes of an experiment when the experiment consists of several stages. The tree begins with the possible outcomes for the first stage and then branches for each additional posssibility. Each of the elements of the last row of the tree diagram represents a unique outcome in the sample space. The number of possibilities in the bottom row of the tree is equal to the number of outcomes in the sample space.

But what does that mean? Well, take for example, the family tree diagram above.

If you look at the bottom of the tree, we end up with a sample space of 8 different outcomes that looks a little like: 

```S = {GGG, GGB, GBG, GBB, BGG, BGB, BBG, BBB} ```

And that sample space is basically the bottom row. If you look back further at the coin toss tree, you can see a sample space of: 

``` S = {HH, HT, TH, TT} or Heads|Heads, Heads|Tails, Tails|Head, Tails|Tails```

These are simply visualizations. Many of you can probably count this in your head or just write it out. Let's move on to experiments. 

### Math Formula.

So, we've drawn it out, we've thought about it, but what does calculating it look like? 

It looks like this! 

![picture of classical probabilty](/images/classic-prob.png)

From this, we can say that we're doing some very basic division. And this makes sense as probability is literally, "the outcome we want" over "all the outcomes possible."

## <a id="experiments"></a>Experiments

An experiment is essentially "A process that generates well-defined outcomes."

What does this mean? Well, the first thing to think about is that when we say, "well defined" we mostly mean that "each time we do something, only 1 thing could occur." So from that, we can then think about an experiment essentially being the act of recording the outcomes of a particular event within which that event has multiple probable outcomes. 

Or an even less fancy way, "we do stuff within which the outcome can be mathematically measured, collected, and evaluated."

And that might also be unsatisfactory but within those collections of words, we have ambiguity. So let's think about actual examples. An experiment could be: 

* Flipping a coin
* Tossing dice
* Raffle Ticket
* Hurricane hitting my home
* Earthquake in Virginia

So here, we can say that flipping a coin has 2 outcomes, 1 of which we'll see each time. Tossing a die and its outcomes is dependent on the number of faces that die has. A raffle ticket is dependent on the number of tickets sold resulting in the likelihood yours is pulled out. For natural hazards, we have past-based data and so that can be used to determine the likelihood. For these last two, we might also have to think about things like fracking, climate change, la nina, el nino, water temperature, and then the paths of hurricanes, the epicenter of earthquakes, and more. So these last two have a lot of different confounding variables but still results in a likleihood or probability of occuring. 

We can calculate probability with the following formula: 

[Formulas for experimental probability](/images/ex-prob.png)

From this image, we can see 2 different approaches to calculating probability. One is essentially doing a thing a bunch and recording it and reporting it. The other is determining the probability based on the factors involved. So for example, we say a coin flip is 50/50. 

But is it? Let's give it a shot!!!

Have 5 coins. Let's see what their probabilities are after 10 flips.

## <a id="counting"></a>Counting Rules, Combinations, and Permutations - Dealing with multi-step experiments.

And so now we must enter the world of experiments that have multiple steps. So imagine something like the game Qwirkle. It has 6 shapes and 6 colors. 

![Multi-step experiments](/images/ms-experiments.png)

## <a id="assigning"></a>Assigning probabilities.

And so now we've gone through a whole bunch of math. Is it time, now, to assign values?

And so we end up with a few last things to think about. 

## <a id="addition"></a>Addition Law

## <a id="conditional"></a>Conditional Probability.

## <a id="day1exercises></a>"Day 1 Exercises

For the most part, we will have you all doing exercises related to the content you've just been through. 

Since our homeworks are just 10 questions, we will have 5 in each day. In this case, we will work off just 1 set of information.

1. A committee of 5 people is to be formed randomly from a group of 10 women and 6 men. Find the probability that the committee has
	* 3 women and 2 men
	* 4 women and 1 men
	* 5 women
	* 5 men
	* at least 3 women