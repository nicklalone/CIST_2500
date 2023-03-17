We have been exploring conceptual data and a variety of concepts in and around the philosophy of statistical inference. Now that we have explored how to explore the shape of our data, let's move a little further in to look within that shape and to compare it to the expected shape of the standard normal curve.

You may ask yourself how and why such a thing matters. This is a good question.

It matters for basically 1 reason, without the laws in and around the normal curve, all of frequentist statistics couldn't be trusted.

There are implications for this. 1. We can predict human activities to a certain extent. 2. To predict those things, we need to have a critical mass of data. 3. Our samples have issues but as long as we mind those issues, we can make inferences about human activity (or whatever we're collecting data about).

Since samples are so important, we're going to spend some time adding some new ideas.

Every single time we take a sample and use it to understand a population, we're making estimates, we're doing probabilities. Everything begins with 2 things:

1.  What is the experiment (Another way to say this is, 'what is our research question?' More on these next week!)?
2.  What is our sampling approach?

In this part of the class, we're going to concentrate not on the experiment, but on the sampling approach. We need to learn approaches to collecting data so that we can learn approaches to writing hypotheses we can solve with those sampling methods.

---------------- Table of Contents ---------------- 
1. [Point Estimation](#pe)
	* [Parameter vs Statistic](#pvs)
1. [Population Type](#pt)
	* [Differences Between Finite and Infinite Populations](#fin-infin)
1. [Data Frames](#df)
2. [Sampling Frame](#sampfram)
3. [Samping Error](#samper)
4. [Sampling Types](#st)
	* [Simple Random Sample](#srs)
	* [Random Sample](#rs)
	* [Stratified Random Sampling](#strs)
	* [Cluster Sampling](#cs)
	* [Systematic Sampling](#ss)
5. [Non-probabilistic Sampling](#nps)
	* [Convenience Sampling](#cons)
	* [Judgement Sampling](#js)

---------------- Table of Contents ---------------- 
## <a id="pe"></a>Point Estimation
In general, we can say that within frequentist statistics we can generally do 2 things, describe and make an inference. In this section of class, we will be generally approaching single values and those single values are called Point Estimates. In the future, we will be taking this idea of point estimation and expand it into, "interval estimation."

We should connect this back to the normal curve since this is our home now. It is where we live. And so, one of the easiest ways to describe point estimation is to use a different definition of the same thing: central tendency. 

Do you remember calculating all of the modes of central tendency? Mean, Median, Mode? These are all estimates of population parameters.

Why? What? Huh?

These point estimations are just what we've been doing with Z-Scores. We use single points as estimates of population parameters. We are essentially offering an 'educated guess' about one aspect of the population given the sample we've collected. 

Of the different kinds of point estimation, we have: 

* Mean
* Median
* Mode
* Points

And we're discussing points but we probably should take a moment to reinforce what we're doing. *And what are we doing?* Well, we're taking samples, calculating sample statistics, and using those data to make inferences about the parameters a population continues.

### <a id="pvs"></a>Parameter vs Statistic
Before we leave point estimation, we should reiterate an important point about everything we'll do. 

We seek to understand the population's parameters. This is the whole point of statistics. We want to examine a sample of data (or population if we can get it) and make an inference about that population. We are always going to try and do this. 

And yet, the best we can do is to make an estimation of points or an estimation of interval. These are essentially, "1-point" like a mean or a z-score, or something. Or we use a confidence interval or deal with the idea that we can be more accurate by widening our interval (which in turn isn't that powerful, more on this later). 

To this, we must state two terms: 
> A **statistic** (those things we generate with sample data) will *change a lot*. For example, if I compare the average student debt of new, established, and retirement age faculty members in the US. 

> A **parameter** is what we're going for. We know through the law of large numbers, the central limit theorem, that the more samples we take, if we average those samples, that, once we got enough, we'd know the values for the population, the parameters. *Parameters do not change* once known (aside from drifting as all things do over time).

Who our population is, what our sample is, who our sample is, how to get at them, and what you want to learn from them is what we'll talk about.

## <a id="pt"></a>Population Type
We have to have a bit of a discussion about populations. Populations can be infinity and with this, you could never possibly grab an opinion or whatever from all of them. Alternatively, there are what are called, "Finite" populations or those populations within which you can know exactly how many there are. 

## <a id="fin-infin"></a>Differences Between Finite and Infinite Populations

This might be easier to describe with pictures.

![An image of populations vs samples](/images/finite.jpg)

![An image of populations vs samples](/images/infinite.png)

## <a id="df"></a>Data Frames
Data Frames are simple to define yet obsessively difficult to understand. This is maybe one of those concepts that will be easily overthought. In light of that, I wanted to offer a few different definitions. 

Elements: 
> A unit of data for which the definition, identification, representation, and permissible values are specified by means of a set of attributes. [OECD](https://stats.oecd.org/glossary/detail.asp?ID=538#:~:text=A%20data%20element%20is%20a,of%20a%20set%20of%20attributes.)

The definition of the population elements is its explicit definition so that members of a field crew can determine whether the site visited is a member of the target population. [Salmon Monitoring](https://groups.nceas.ucsb.edu/monitoring-kb/resources/statistical-definitions/element-of-a-population.html)

> A basic unit of information that has a unique meaning and subcategories (data items) of distinct value. Examples of data elements include gender, race, and geographic location. [NIST](https://csrc.nist.gov/glossary/term/data_element)

Data Frame: A list of elements from which the sample will be selected.

Elements are basically that thing you are studying. You have to be mindful of this concept as this could be a source of potential errors. Speaking of errors, lets talk a little about this.

## <a id = "sa,pfram"></a>Sampling Frame
Sometimes, we need to lop off some part of the population in order to delimit them into a sample. This is often called the "sampling frame" which is best defined as: Any list, material or device that delimits, identifies, and allows access to the elements of the population. Another, perhaps more simple way to define a sampling frame is that it is a complete list of everyone or everything you want to study.

You can read more about it here: https://www.statisticshowto.com/probability-and-statistics/statistics-definitions/sampling-frame/

## <a id="samper"></a>Sampling Error
![This is the easiest way to consider things](/images/samper.png)

## <a id="st"></a>Sampling Types
How we approach our sample is all over the place in terms of wisdom. For the most part, we just sort of allow the population to dictate how we can access them. For example, if I wanted to access y'all, I just survey all of you and I can make you do it for class points if I want. For some, like those in jail, getting access to this population takes so much effort that whole careers can be made with access to just 1 jail population.

So what do we mean by sampling types?

### <a id="srs"></a>Simple Random Sample - Finite Population
![Simple Random Sample](/images/srs.jpg)
So simple random sample sounds simple but...it can be nuts. The issue at hand is this, the basic nature of SRS is to ensure that *everyone* in the population has an *equal* probability of being selected. Given the infinite variance of humanity, how can you ensure this? Consider [the following](https://www.investopedia.com/terms/s/simple-random-sample.asp): "A sampling error can occur with a simple random sample if the sample does not end up accurately reflecting the population it is supposed to represent." 

How do you approach this in a way to ensure equitable distribution?

### <a id="rs"></a>Random Sample - Infinite Pop
This, like the above, is *deceptively* simple. Consider this: 
A random sample of size n from an infinite population is a sample selected such that the following conditions are satisfied: 

1. Each element selected comes from the same population.
2. Each element is selected independently. 

Notice here, over SRS, random sampling is just randomly going around. Something to keep in mind is that, "A simple random sample from a very large finite population is approximately the same as a random sample from an infinite population" [Great read here](https://amsi.org.au/ESA_Senior_Years/SeniorTopic4/4b/4b_2content_5.html)

### <a id="strs"></a>Stratified Random Sampling
Strata is the word here. The most basic definition is that you form what amounts to categories of something people share within your population. This could be something like income, education, nationality, religion, political party, ethnicity, or something like "gamers."

The issue at hand [is this though](https://www.simplypsychology.org/stratified-random-sampling.html), "When stratifying, researchers tend to use proportionate sampling where they maintain the correct proportions to represent the population as a whole." 

### <a id="cs"></a>Cluster Sampling
I cannot say it better than [this website](https://www.scribbr.com/methodology/cluster-sampling/): 

>In cluster sampling, researchers divide a population into smaller groups known as clusters.  They then randomly select among these clusters to form a sample.

Cluster sampling is a method of probability sampling that is often used to study large populations, particularly those that are widely geographically dispersed. Researchers usually use pre-existing units such as schools or cities as their clusters.

### <a id="ss"></a>Systematic Sampling

Your book defines systematic sampling as: 

> a probability sampling method in which we randomly select one of the first k elements and then select every kth element thereafter. 

Or to put this in more useful terms, we start somewhere, decide an interval, and go from there.

I'll place an image here that visually shows how these sampling methods work. From this point, we'll be able to better understand how and where to use these. 

![Various sampling methods](/images/samp-col.png)

## <a id="nps"></a>Non-probabilistic Sampling

### <a id="cons"></a>Convenience Sampling

This is a sampling method that is used quite a bit and is appropriate when your population is incredibly difficult to access in a specific way (e.g. they are spread out geographically, they are hyper-specialized and only the specialists can find others like them, or it is a specialized job you have to ask others about). We make a distinction here from snowball sampling (ask friends to take survey, ask their friends to take survey, and so on. Sample gets bigger as it rolls down hill). 

Your book defines this concept as: 

> a non-probability method of sampling whereby elements are selected for the sample on the basis of convenience.

But this is an unsatisfying definition as it uses the term to define itself. We could replace that word 'convenience' with a different phrase that might help it make more sense. For example: 

> a non-probability method of sampling whereby elements are selected for the sample based on the population that is close at hand.

This is often how we test alphas or betas in software design. We find some folks we know, or other designers, and have them test our product not because it's rigorous, but because it's easier. Often for convenience sampling, it's about ease moreso than dealing with math. 

### <a id="js"></a>Judgement Sampling
This last one sounds pretty straight forward. We essentially, "select based on the opinion of an expert." For example, for my survey of technology use in emergency management, my survey was intentionally based on judgement. As a practitioner in this space, I needed to understand how and why certain kinds of people are the way that they are. And so, I went around a variety of cities, states, regions, and federal agencies intentionally sampling from the population until I had a wide enough group that I could say it was representative. 

No one else in my field could replicate this survey because i've spent a good 5-6 years establishing my presence in the field. This is perhaps an important aspect of this type of sampling, your judgement and your capacity need to be known in the field in order for folks to accept their part in the survey.