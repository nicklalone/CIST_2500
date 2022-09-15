# CIST_2500 - Introduction to R.

# Getting Started
We produce data far more than we produce waste and the gap between the amount of data and amount of trash we are creating is only getting further apart. In order to help us with the sheer amount of data we've produced, there are a number of products out there to help. 

Among those packages, we can highlight the following: 

| Software | URL|
|----------|----|
|SPSS | https://www.ibm.com/products/spss-statistics |
|Stata | https://www.stata.com/ |
|SAS | https://www.sas.com/ |
|R | https://www.r-project.org/ |

And you can see where they all reside at: https://www.youtube.com/watch?v=pKPaHH7hnv8&ab_channel=DataDaft

So for this class, we're going to learn a few commands. Nothing drastic this week as I don't want to scare everyone away (yet). 

## Basics and Overview

One of the things we will be doing in this class is taking a tour of the world of "R." This programming language has grown in popularity over the years because of a ton of support, ease of use, its nature as an open-source product, and its power. R, at its core, will reward you should you decide to learn how to use it as it is a skill that will open doors for you. 

That said, its nature as an open source product is as such that it can be dense, almost impossible to really *get* when you first open it up. What's more, there are literally millions of videos about how R functions and not a single one of them begins with the same content, uses the same packages to get started, or even acknowledges that there are other ways of doing things. 

For this initial exposure, we will be doing some *extreme basics* in the form of: 

1. [Loading Packages](#packages)
2. [Loading Data](#loading)
3. [Poking around the Summarytools Package](#summarytool)
4. [Working on Z-Scores](#zscore)
5. [Appending columns of information to your data](#appending) 
6. [Data Filtering](#filter)
7. [Loading and doing tutorials](#tutorial)

But first things first. We need to install R. This requires that you install 2 things (4 on Macs). 

For starters, we will go to CRAN (the comprehensive R Archive Network) and download the base package of R. That will be found at: https://cran.r-project.org/

Now, what this thing from CRAN you just downloaded is is basically an interpreter and the base language. We can use it but since we're new, we probably should find something a little easier to deal with. 

With that in mind, let's go to step 2: R-Studio. This package is located at: https://www.rstudio.com/

You will need the desktop version for your operating system. *Do not pay for it, just get the free version* 

**For Mac Users:** if you're on a mac, you need to do 2 more steps. These steps are just things for R to use in the background. It will not influence your machine in any way outside of this. 

1. Open up your terminal (click the magnifying glass in the upper right and type ``terminal`` and it should show up). Once you're there, type the following command ```xcode-select --install``` and let it run until its done. That is step one! If you really *need* to know, Xcode is the software development toolkit for macs. It is no longer installed by default. 

2. You need to install a program called, Xquartz which is located at: https://www.xquartz.org/. Just download the most recent .dmg or package and install it. This project essentially allows you to deal with the various windows in R-Studio. You can read more about what xquartz is, here: https://en.wikipedia.org/wiki/X_Window_System

And so we're up and running! Let's take a bit of a tour. You should see 4 panes (maybe 3, but the 4th will show up after you load data):

![Main R-Studio Screen](/images/main.png)

1. (Upper Left) - **Source Editor** 

This is the pane you might not see yet. It is the data pane and it lets you click on and explore your data. In addition, you can do some rudimentary filtering with this window. If you are working in a variety of datasets, it will show them in a variety of tabs in that window. 

2. (Upper Right) - **Environment Pane**

This is what we can call your "environment" window or pane. Here, you will see a whole lot of stuff. From left to right, Environment is where you will see what data is loaded into memory. These will be noticable from the blue arrow to the left of the name that, once clicked, will give you some basics about your data. Clicking on the actual name will show it on the data pane. 

Next to environment, there is a pane called, "History" which is what you think it is. To the right of History, there is "Connections" which is primarily used for very large datasets and data repositories. Finally, we see the tutorial pane. Initially, the tutorial pane requires 

3. (Lower Left) - **Console**

4. (Lower Right) - **Various (Files, Plots, Packages, Help, Viewer, Presentation)**

All of these can be manipulated in a variety of ways. For extra panes, check out the ```View > Panes```

## <a id="packages"></a>Packages - What they Are, Where to Get Them, How to Load Them

We will be downloading 2 packages and working with them. 

```R
install.packages("summarytools")
```
Which is basically a bunch of commands for summarizing data that can be found at: https://cran.r-project.org/web/packages/summarytools/vignettes/introduction.html

The next package we will install is: 

```R
install.packages("tidyverse")
```
This package is actually a collection of packages that work together for data scientists. You can find documentation for this collection here: https://cran.r-project.org/web/packages/tidyverse/index.html 

Primarily, we will keep this on our machine for later; however, for right now we will be exploring our data with a few commands it contains like: dplyr which primarily allows us to manipulate our data in a few ways. 

## <a id="loading"></a>Loading Data

For the most part, we will primarily be loading data via pointing and clicking in R-Studio. However, if we want to load data through scripting, it would look something like: 
```R 
library(readr)
homework_5 <- read_csv("homework_5.csv")
View(homework_5) 
```

These commands are basically, "Load the library and commands for the readr package." Once this is done, we write out a command that is essentially, "create a memory object called homework_5" that contains a csv (read_csv) called this string, "homework_5.csv". Once this is done, in the "Environment" pane, you should see your object called, "homework_5" appear with a blue arrow to the left of it. 

It is now in memory and we can start calling on it!

## <a id="summarytool"></a>Summary Tools and Descriptives

So, this is a collection of commands for R that deal with what we've been doing for a few weeks now with regard to descriptives. Those commands are relatively straight forward! I'll copy and paste them from the documentation: https://cran.r-project.org/web/packages/summarytools/vignettes/introduction.html

|Function	| Description | Uses|
|-----------| ------------| ----|
| freq()	| Frequency Tables featuring counts, proportions, cumulative statistics as well as missing data reporting| Frequency Distributions. |
| ctable()	| Cross-Tabulations (joint frequencies) between pairs of discrete/categorical variables, featuring marginal sums as well as row, column or total proportions| This is mostly for categorical or nominal variables.|
| descr()	| Descriptive (Univariate) Statistics for numerical data, featuring common measures of central tendency and dispersion| This will give you descriptives for your dataset |
| dfSummary() |	Data Frame Summaries featuring type-specific information for all variables: univariate statistics and/or frequency distributions, bar charts or histograms, as well as missing data counts and proportions. Very useful to quickly, detect anomalies and identify trends at a glance| Primarily used to check on a variety of descriptives we won't be using just yet but it's neat! Check it out! |

## <a id="zscore"></a>Z-Scores and How to Collect Them

So, one of the very first things we've done to open up the idea of moving between a sample statistics and a population parameter is the z-score. This is one of the first times we can try and make assertions (even though we aren't really sure how confident we can be about them). 

In R, we can do all sort of things to help calculate them and it may (or may not, depending on your comfort level) be easier to deal with that doing it in excel. 

So, we can do it manually. For example, we could get the descriptives and write down the values. Take for example: 

| Descriptive  |   Age  |  IQ     |Weight|
|------------- |-------- |-------- |--------|
|             Mean    |29.61  | 110.63  | 189.51|
|          Std.Dev     |7.20  |  14.79  |  31.09|
|              Min    |19.00  |  85.00  | 130.00|
|               Q1    |23.00  |  98.00  | 158.00|
|           Median    |28.50  | 110.50  | 198.50|
|               Q3    |35.00  | 124.00  | 213.00|
|              Max    |48.00  | 136.00  | 250.00|
|              MAD     |8.15  |  18.53  |  29.65|
|              IQR    |12.00  |  25.50  |  54.75|
|               CV     |0.24  |   0.13  |   0.16|
|         Skewness     |0.50  |  -0.03  |  -0.47|
|      SE.Skewness     |0.23  |   0.23  |   0.23|
|         Kurtosis    |-0.68  |  -1.27  |  -1.03|
|          N.Valid   |114.00  | 114.00  | 114.00|
|        Pct.Valid   |100.00  | 100.00  | 100.00|

If I wanted to calculate z-scores for the "Age" variable, for example, we could do the following: 

``` 
(X(age) - Mean(Age)) / Standard Deviation(Age)
```

This would get us what we want though we'd have to manually type these out and that gets cumbersome. 

Within R, we can also type the following (we will assume our datasheet is named data)

```R 
zscore_age <- ((data$Age)-Mean(data$Age))/sd(data$Age)
```

And what the above does is, ```zscore_age <-``` within R, I want to create an object named zscore_age (that is what the <- is, I will be making this (left) by doing what is one the right). What that zscore_age contains is ```((data$Age)-Mean(data$Age))/sd(data$Age)```

Or what amounts to a collection of zscores for the age variable. Try it out! 

On the environment pane, you'll see an item called, "zscore_age" that we can call on in the console. Give it a shot. Type: ```zscore_age``` into the console and you'll see a collection of zscores for the Age variable. 

Neat!

So they're in memory now but what do we do with them? Well, we can do whatever we want, really! Let's try adding it to our existing datasheet. 

## <a id="appending"></a>Appending Data to your Data (frame, sheet, what?)

At times, we need to do things like use our data to calculate or filter variables that we use for other things. This could be anything like: 

1. We have a variable like Age which is numeric and quantitative but we want categories in order to better focus our data. 
2. We want to separate variables out in order to create a variety of binary variables (these are also called dummy variables). 
3. We want to filter out refusals to answer questions, not applicable answers, and other kinds of data that is troublesome. 
4. We want to focus our analysis on specific people. 

In each case, we either need to calculate a new variable or deal with something in our current variable and remove observations. 

In this particular section, we are curious about how to add data to an existing frame.

Remember that when you filter some data, you create what is called a "Data Frame." These are basically: 

> A data frame is a table or a two-dimensional array-like structure in which each column contains values of one variable and each row contains one set of values from each column. - https://bookdown.org/yihui/rmarkdown/tufte-quotes.html 

So to add data together into a new dataset, what do we do? 

Well, first we need to create a variable or a dataframe or a column of data in memory. For our purposes, we will use our zscore example from previous work: 

```R 
zscore_age <- ((data$Age)-Mean(data$Age))/sd(data$Age)
```

This command creates a ```zscore_age``` object that exists in memory and can be seen in the "Environment" pane. It can be called on by simply typing the name of the object into the console. Try it now, type ```zscore_age``` into the console. You should see a list of zscores that shows up in the console.

Now, we want to add this column of information to our existing dataset. For example, this would allow us to type something like, ```data$zscore_age``` and it could be used like any other variable in the existing dataset. We could also use it, for example, to send the zscores to another package that calculates the area between the mean and the zscore. 

We can approach this in a number of ways; however, we will concentrate on just one of those. The process is relatively straight forward (in as much as these things can be). For example, 

We can add the dataframe or object to the dataset....but create a NEW object entirely. 

For example, try the following (change the following to match your dataset names and object names): 

```R
zscore_dataset <- (homework_5,zscore_age)
```

And look what happened! We now have a new dataset called ```zscore_dataset``` and can use it for all sorts of things, including exporting it elsewhere into a new dataset. 

We will stop there and come back to this in a later exercise. Next, we will get further in to filtering and dealing with selecting data within a dataset. 

## <a id="filter"></a>Data Filtering and You



For this, i'm going to send you to a tutorial that is within R. I'm doing this for 3 reasons: 

1. It's super good!
2. I can't make something better. 
3. It requires you to navigate R and we need to get comfortable with it.

However, there is a super neat and useful cheat sheet we can pull up. It is essentially a graphic representation of what is selected given operators in the filter function. I really love the way it looks and it's been very useful to use. 

![The Cheat Sheet](/images/filter.png)

And what these operators can do is amazing! While for this dataset, we might not use many of these, for others...they will be so, so useful. And so, we go off to use a real dataset in the world of a tutorial.

## <a id="tutorial"></a>How to Start a Tutorial




|
