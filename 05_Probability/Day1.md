# Probability and Statistics

Admin stuff: 
- office hours
- Test Next Week
- R Homework Looks Good - was that enjoyable?
- Typos vs Grammar 
- Github vs PPT or both?

From your textbook, it introduces probability with 4 different ideas: 

1. What are the chances that sales will decrease if we increase prices?
2. What is the likleihood a new assembly method will increase productivity? 
3. How likely is it that the project will be finished on time?
4. What is the chance that a new investment will be profitable?

What other ways do you think we need to calculate probability?

-----------------

Your book then goes on to define the word probability by saying: 

> probability is a numerical measure of the likelihood that an event will occur. -page 181 in your textbook.

We often think of probability as something that measures the certainty an event will occur. However, in as much as we calculate certainty, we also calculate uncertainty as probability is as much a calculation of how likely and how unlikely simultaneously. 

For example, let's say we are working to understand the cosequences of raising prices on sales. Probability is calculated along a continuum of 0 > 1 or 0 > 100%. 

Think of it like this: 

0% ---------------------- 50% ---------------------- 100%

To understand probability, we will be going through some theories, examples, and various ways to calculate probability. Please find the table of contents below: 

------------------------------------------

----------  Table of Contents  ----------

1. [Classical Probability](#class-prob):
	* [Law of large numbers](#largenums) 
	* [Sample Spaces](#samplespaces)
	* [Tree Diagrams](#tree-diags)
	* [Classical Probability Formula](#class-form)
2. [Experiments](#experiments)
	* [Multi-step Experiments.](#ms-exp)

---------------------

3. [Mutually Exclusive vs. Independent](#mutind)
4. [Basic Probabilities](#basics)
	* [Completement of an Event](#complement)
	* [Addition Laws](#addition)
5. [Multiplication Rules or "Conditional Probability"](#multiplication)
6. [Exercises](#day1exercises)

------------------------------------------------------------

# <a id="class-prob"></a>Classical Probability:

Today, we will be working to understand 4 things. First, we will think about probability. The term, "Classical probability." Next, we will talk about the various ways to think about experiments as well as multi-step experiments. We will finally discuss Addition, Multiplication, and Conditional Probabilities. 

Classical Probability is defined by the [American Psychological Association](https://dictionary.apa.org/classical-probability) as:

> an approach to the understanding of probability based on the assumptions that any random process has a given set of possible outcomes and that each possible outcome is equally likely to occur. An example often used is rolling a die, in which there are six possible outcomes and each outcome is assumed to be equally likely.

All along the way, we will situate ourselves using formulas. Those formulas and examples will be found below where appropriate. 

We must begin with The objectives for this particular day are: 

|Objective | Page Numbers in Textbook | 
|----------|--------------------------|
|Identify Sample Spaces | Page 182, 194 (notes) |
|Calculate Probabilities| Classical: (187-88, 194, 233) Experiments (182-83, Multi-step 182-83)|
|Understand Mutually Exclusive vs. Indepdendent outcomes| ME: (200,207), I: (206,207,219) |

What these objectives mean are that by the end of this week, we'll have an idea about probability, how to calculate it, and when to apply different calculations.

Generally, this gets in to Chapter 4. 

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
|Union|The union of A and B is the event containing all sample points belonging to A or B or both. The union is denoted by A∪B|
|Intersection|Given two events A and B, the intersection of A and B is the event containing the sample points belonging to both and and B. The intersection is denoted as A∩B|
|Addition Law|P(A∪B) = P(A)+P(B)-(A∩B)|

Before we get into experiments, lets talk a little bit about what we call "classical" probability and how to think about it. This will establish our point of origin and then we'll build for that. But first, a blast from the past: 

#### <a id="largenums"></a>The Law of Large Numbers

The law of large numbers states that if one performs the same experiment over and over, the results obtained will resemble the "True" probability. 

What does this resemble? That's right, the Central Limit Theorm!

Remember that the theorem says that if you have a population with mean μ and standard deviation σ and take sufficiently large random samples from the population with replacement, then the distribution of the sample means will approach μ.

Wikipedia has a very large entry on this: https://en.wikipedia.org/wiki/Law_of_large_numbers and it's worth at least glancing at it.

To wit, there is a series of logical steps that we can take with probability that can fit probabilistic calculations: 

1. Gather sample spaces. (think about what you're calculating the probability of)
2. Tree Diagrams (draw it out)
3. Write the sample space as a mathematical figure and represent it as a fraction, decimal, or percentage (it is up to you.) 

So let's start walking through the steps.

### <a id="samplespaces"></a>Sample Spaces: 

A sample space is essentially (from above), "the set of all experimental outcomes that is typically marked with S. Because it contains all the experimental outcomes, it has a probability of 1 or 100%; P(S)=1"

So this is where we learn a little about notation. What is that P? That's probability. S in this case is the Sample space. And there's a 1. So what does this mean?

Well, basically it says, the probability of an event's sample space is equal to 1 or that all outcomes are equal to 100% (which is what that 1 is). 

Let's gather a few sample spaces: 

1. Rolling 2 Dice, what is the sample space of all outcomes?
	- TT, HH, TH, HT <- why is this the same space?

2. A coin and a die, what is the sample space for all outcomes?
	- (H,1), (H,2), (H,3), (H,4), (H,5), (H,6) - is the S of heads.
 	- (T,1), (T,2), (T,3), (T,4), (T,5), (T,6) - is the S of tails.
 	- To find the question though, Heads + Prime Number, it seems to be: 
 	- (H,1), (H,2), (H,3), (H,5) or 4/12 or 1/3.

3. 2 different dice, what is the sample space for all outcomes?
	
Let's think about the dice themselves given the previous example. We could also visualize it!

![Dice rolls](/images/dice.gif)

So we see all sorts of potential here. In fact, we have 6 sets of 6 or 36 possibilities. Now, the way this is visualized is that we are essentially adding these dice. So for that it's 36. If we actually cared about something like, "What is the probability 1 die is 3 and 1 die is 4," we have to visualize something else because we can go 1/4, 4/1 and the sample space is larger but we'll cover this later. Let's look at a way to visualize the potential outcomes.

### <a id="tree-diags"></a>Tree Diagrams - A Good Visualization Technique

So with regard to the question of a coin toss. What would it look like? Let's draw it out!

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

These are simply visualizations. Many of you can probably count this in your head or just write it out. Let's try a few!

1. Rolling 2 Dice, what is the probability of rolling heads twice?
	- TT, HH, TH, HT 

2. A coin and a die, what is the probability of rolling heads and a prime number?
	- (H,1), (H,2), (H,3), (H,4), (H,5), (H,6) - is the S of heads.
 	- (T,1), (T,2), (T,3), (T,4), (T,5), (T,6) - is the S of tails.
 	- To find the question though, Heads + Prime Number, it seems to be: 
 	- (H,1), (H,2), (H,3), (H,5) or 4/12 or 1/3.

3. 2 different dice, what is probability my two dice added together equal 5?
	- Go back to that visualization of the dice. Count how many dice add up to 5.

4. I am throwing darts at a small target. What is the likelihood or % change if in 3 throws that I hit it all 3 times?

Let's move on to experiments. 

### <a id="class-form"></a>Math Formula.

So, we've drawn it out, we've thought about it, but what does calculating it look like?

It looks like this! 

![picture of classical probabilty](/images/classic-prob.png)

From this, we can say that we're doing some very basic division. And this makes sense as probability is literally, "the outcome we want" over "all the outcomes possible."

## <a id="experiments"></a>Experiments and Multi-Step Experiments

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

### <a id="ms-exp"></a>Multistep Experiments

Now, experiments are one thing but sometimes we want something more than just, "when can I draw a King out of a deck?" Sometimes we want something like, "We have 2 bags of stones. What is the probability that we get 2 blocks of a specific shape?"

![Multi-step](/images/ms-experiments.png)

Look at this. We need to consider this a little bit more. Let's dig a little in to Addition and Multiplication. 

Generally, you can consider this wisdom from your textbook: 

> If an experiment can be described as a sequence of *k* steps with n<sub>1</sub> possible outcomes on the first step, n<sub>2</sub> possible outcomes on the second step, and so on, then the total number of experimental outcomes is given by (n<sub>1</sub>), (n<sub>2</sub>), ... (n<sub>k</sub>).

## <a id="mutind"></a>Mutually Exclusive vs Independence 

Whether or not an event is exclusive or independent is what will dictate your choice of probablistic calculation. For this, we should define mutually exclusive and independent in terms of probability. 

For mutually exclusive, your book defines it as: 

>Two events are said to be mutually exclusive if the events have no sample points in common. 

So think of this as a coin flip. EITHER HEADS OR TAILS.

But these words, they make a little sense but maybe not as much as they should. So for this then, we have a graphic!

![Mutually exclusive](/images/mup.png)

See how these two events can only happen exclusively? The box is the sample space (S) and each event A/B is where that exclusivity can be visualized. 

When we're looking at mutually excluive events, the formula for probablity is essentially adding them together (of which we will talk about it soon.). The formula is: (P(A∪B) = P(A)+P(B).)

In other words, because the events have a different probability, adding them together will result in knowing the probability of "either/or"

That said, we then can move on to independent outcomes. This isn't really defined well by your book but we can borrow what it does talk about and extrapolate: 

>an independent event is when a single event is uneffected by the other event occurring. 

So the coin doesn't work here as it's EITHER/OR. What we can do here is actually add something to that coin flip. 

For example, if I add a die roll to the coin flip, I can say that these two events are independent because flipping the coin does not really influence the die roll. 

But again, words. Let's see this in graphic form:

![Independent](/images/mup-2.jpeg)

## <a id="basics"></a>Basic Relationships

Your book discusses these rules in chapter 4, section 2.3 called, "Some Basic Relationships in probability." It goes through each of these but i've tried to distill them a bit. 

For the most part, we can say that there are 3 properties of probability. Those properties are that: 

1. For any event (E), the probability of that event is greater than 0 and less than 1. 
2. For any sample space (S), the sample space's probabilities will equal 1 or 100%.
3. For the empty set, the probability of it existing is 0.

Why do these matter? 

### <a id"complement"></a>Complement of a Set.

So, sometimes we think about probability based not on the possibility of something happen but on the possibility of the opposite thing happening. 

![Compelement of a Set](/images/comple.png)

So what would we use this for?

1. There is a 5% failure rate. What is the complement?
2. There are 31 students who have the flu. What is the complement?
3. 90% of nebraskans live in Omaha. What is the complement?
4. What is the probability that when rolling a die that neither die ends up with a 6? (look back at the visualization!)

The answer to this is that there are 11 outcomes where at least 1 die is a 6. We know that there are 36 permutations of dice results. 

Let's use the formula. (P(Ec) = n(Ec)/n(S)) = 11/36. Here, we need to actually subtract the probability of this from everything else (it's complement) in order to get the probability. So, 1-(11/36) or 25/36 or around 70%.

Does that make sense?

### <a id"addition"></a>Addition Law

Addition law is essentially adding two probabilities together but because you're looking for a UNION (vocab here!) of those two events and subtract the INTERSECTION (vocab here!) of those two events. 

The way that this works is this: 

> P(A∪B) = P(A)+P(B)-P(A∩B)

So this, how does it work? Well, let's look at a graphic!

![Addition Laws](/images/add-law.png)

So let's try 1 big example. 

I am looking for a new character to play in a MOBA. There are 17 available characters. Looking at their capabilities, we can list them out. 
* 6 are offense.
* 7 are support.
* 5 are for mid/Jungle.
* 2 Are Gimmicks.

Of this, we can additionally state that: 
* 2 is Offense but can do suport.
* 1 is a gimmick and mid.

If I ask the game to select 1 of these, what is the probability that the game chooses 1 that is offense or a support?

1. Is there actually 17? 
2. The word "or" means a lot here. Why? It tells us that we're going to do addition rule. 

So, we basically list it like this: 

P(offense or support) = P(offense) + P(Support - (P(offense + support))

This looks like: 6/17 + 7/17 - 2/17 or 11/17 or around 64.7%.

Again, let's think about 2 dice. What is the probability of rolling 2 dice and adding them together to make either less than 5 or exactly 12. 

Here, we need to talk about the AND portion of the equation. 

Now this works for independent events, what about mutually exclusive ones?

Well that's easy! You just add them both together and that's it.

What about more events? What candy bar will I choose given the probabilities we already have? 

## <a id="conditional"></a>Multiplication Rules

We have to worry here about what we might be doing to our sample space. For example, if i'm drawing 2 cards, do I put the card back before I draw another? Do I replace something? 

The conditions of our probability must be considered!

For two independent events, E and F, the probability that E and F occurs is given by this formula: P(E and F) = P(E) * P(F)


## <a id="day1exercises"></a>Chapter 4 Exercises

For the most part, we will have you all doing exercises related to the content you've just been through. 

Since our homeworks are just 10 questions, we will have 5 in each day. In this case, we will work off just 1 set of information.

1. A committee of 5 people is to be formed randomly from a group of 10 women and 6 men. Find the probability that the committee has
	* 3 women and 2 men
	* 4 women and 1 men
	* 5 women
	* 5 men
	* at least 3 women
