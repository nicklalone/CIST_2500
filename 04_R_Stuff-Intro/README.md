# CIST_2500 - Introduction to R.

# Getting Started
We produce data far more than we produce waste and the gap between the amount of data and amount of trash we are creating is only getting further apart. In order to help us with the sheer amount of data we've produced, there are a number of products out there to help. 

Among those packages, we can highlight the following: 

1. SPSS - Statistics Package for Social Sciences
2. Stata - 
3. SAS
4. R

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

1. (Upper Left) - This is the pane you might not see yet. It is the data pane and it lets you click on and explore your data. In addition, you can do some rudimentary filtering with this window. If you are working in a variety of datasets, it will show them in a variety of tabs in that window. 

2. (Upper Right) - This is what we can call your "environment" window or pane. Here, you will see a whole lot of stuff. From left to right, Environment is where you will see what data is loaded into memory. These will be noticable from the blue arrow to the left of the name that, once clicked, will give you some basics about your data. Clicking on the actual name will show it on the data pane. 

Next to environment, there is a pane called, "History" which is what you think it is. To the right of History, there is "Connections" which is primarily used for very large datasets and data repositories. Finally, we see the tutorial pane. Initially, the tutorial pane requires 

3. (Lower Left)
4. (Lower Right)




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

## <a id="appending"></a>Appending Data to your Data (frame, sheet, what?)

## <a id="filter"></a>Data Filtering and You

## <a id="tutorial"></a>How to Start a Tutorial




