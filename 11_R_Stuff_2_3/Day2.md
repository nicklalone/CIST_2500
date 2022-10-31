Today, we have 2 goals: 
1. Import, Refactor, Filter, and take some steps to clean data in R itself.
1. Once imported, we need to perform a few CHI-Square Tests in R, Append Crammer's V, and export those results to a csv so we can write up a report.

At its most basic, the χ² test allows us to test if a 1 or more categorical or nominal variables from a sample is accurate representing a population or are associated. It tests this assertion by calculating the data we would expect to be there if the null hypothesis were true and testing what we actually observed.

Remember that there are 2 rules to remember for χ²:
1. Expected values are calculated with the assertion that H<sub>o</sub> is true
1. While you are seeking a relationship, the math provides us with a variety of ways variables relate mathematically. You can use another measure to understand the impact.

---------------- Table of Contents ---------------- 

1. [Getting Started](#gs)
1. [Goodness of Fit](#gof)
1. [Tests of Independence](#toi)
	1. [Dealing with Data](#dwd)
		1. [Categorical Data in R](#catr)
		1. [Shifting from Text to Numbers or Vice Versa](#shift)
		1. [Filtering / Layers](#filt)
		1. [Exporting](#export)
	1. [χ² in R](#chir)
	1. [Expected Values and Contingency Tables](#expect)

---------------- Table of Contents ---------------- 

## <a id="gs"></a> Getting Started
Chi Square or χ² in R requires 2 things:
1. Data that is ready to be run.
1. A package that runs the analysis in addition to Cramer's V.

## <a id="gof"></a> Goodness of Fit in R

## <a id="toi"></a> Tests of Indeopendence

### <a id="dwd"></a> Dealing with Data

Here, we'll import a dataset. The dataset we're working on is, "Student" and can be found on Canvas. As we have in the past, point your working directory toward that folder so the file explorer window in R will show you what files are in that directory. Then navigate to the directory, right click on the file you need (in this case, it is ```student-mat.csv```, and then import it. 

Once this is done, you'll be on your data import screen. Here, you need to worry about some very important things: 
1. Set your delimiter to semi-colons.
1. Rename your dataframe into something that is useful for you and easy to type.
1. Click import. 

This will import your dataframe and should auto-load it in the upper left of your screen while also loading a representation of that data's abstracted info in the upper right under _environment_.

Once the data frame is loaded. Do the following: 
1. Make sure lsr, tidyverse, summarytools, ggplot, tidyr, and rcompanion are loaded with the command ```Library(packagenamehere)```.
	1. Alternatively, you can go to the bottom right, click on ```packages``` and then click the box to the left of each package in order to activate it.
1. Once these are all loaded. I would recommend the following to run and explore your data: 
	* ```freq(yourdataframe)``` and then look through these to look for any abnormalities.
		* You may be asking yourself right now, "What abnormalities?" and to this I will say that this initial poking around is essentially exploratory data analysis. Getting to know your data is important and this should be the first thing you do with any dataset.
	* Open up the code book. This is called, ```student.txt``` and it will tell you how your data was coded as the dataset was created.

### <a id="catr"></a> Categorical Data in R

So, one thing you'll notice is that we are working with 2 things: numbers referring to categories as well as strings of characters. In order for us to deal with categorical data, we need to do a couple of things: 
1. Make sure that the data are all consistent.
1. Run our analyses on that consistent data.

And to do that, we need to recode, refactor, or otherwise clean our data. But, how do we do this? Well, we need to change the data to meet those needs. We can do that in a lot of different ways but we're going to concentrate on 1 specific way.  

### Hypotheses: Mother or Father's educational attainment's impact on Higher Education Desires base

For this part of class, we're going to be working on hypotheses. In looking at this dataset, we can see 3 variables that are interesting. First, ```MEDU``` and ```FEDU```

```MEDU``` - mother's education is set up in the following way:
* 0 - No formal education,  
* 1 - Up to 4th grade, 
* 2 – 5th to 9th grade, 
* 3 – secondary education or 
* 4 – higher education

```FEDU``` - father's education is set up in the same way: 
* 0 - No formal education,  
* 1 - Up to 4th grade, 
* 2 – 5th to 9th grade, 
* 3 – secondary education or 
* 4 – higher education

And then, we have a variable called, ```higher``` which tells us whether the student desires to go on to higher ed or not. It is set up in the following way: 
* yes 
* no

So the research question I had in mind was this, "Does a student's desire to enter higher education have an association with Mom or Dad's education level?"

This question allows us to think about 2 specific analyses we are going to do. I'll set up the hypotheses here: 

> H<sub>o</sub>: There is no association between Dad's education level and the student's desire for higher ed.

> H<sub>a</sub>: There is an association between Dad's education level and the student's desire for higher ed.

And so that's Dad's level. Let's set up Mom's level as well. 

> H<sub>o</sub>: There is no association between Mom's education level and the student's desire for higher ed for students in a math course.

> H<sub>a</sub>: There is an association between Mom's education level and the student's desire for higher ed for students in a math course.

From here, we can do 2 analyses. If we were interested, we could combine FEDU and MEDU into a variable called, "parent's education level" and run just 1 analysis. However, in this way we can actually do a little bit of a comparison. We can single out specific parent's impact on the student.

**NOTE:** I want to make a note here. I'll call it out with a quote tag: 

> While we are running these analyses, we are going to create a bunch of numbers and results. Most likely, we will see a statistically significant relationship; however, it will be up to us to interpret the meaning of that relationship. More on this later. 

### <a id="shift"></a> Shifting from Text to Numbers or Vice Versa

So now we have the 3 variables that are important for what we're going to do: 
* ```FEDU``` but it is in numeric fashion, not its categorical text.
* ```MEDU``` but it is in numeric fashion, not its categorical text.
* ```Higher``` is in Yes/No string-based format. 

So, we need to run chi-squared analyses on these data. In an effort to help ourselves, our data needs to all be in string or ```chr``` format. As a result, we need to re-code ```FEDU``` and ```MEDU``` into ```chr``` format. Now, we could simply force it to become a ```chr``` variable with the command: 

```dataframename$Fedu <- as.character(dataframe$Fedu)```

But doing this would essentially erase the numeric data that is there. So, rather than losing information, we can recode it for what we need it for. Consider this: 

```student$Fedu <- recode(student$Fedu,"0" = "No Formal Education", "1" = "Up to 4th Grade", "2" = "Up to 9th Grade", "3" = "Secondary Education", "4" = "Higher Ed")```

And so what is happening here? Well, if we read it from to left to right, we are creating a variable called ```student$Fedu``` that will be re-coded based on an existing variabled, ```student$Fedu```. This means that I'll be overwriting the data in that whatever we write will be overwritten by our full command. So what is it? Well, we work off of the ```students.txt``` codebook and using that to re-code our variable from 0,1,2,3,4 to "No Formal Education, Up to 4th Grade, Up to 9th Grade, Secondary Education, and Higher Ed".

And so when we run it, we can then see that our variable moves from numeric/integer to a character or chr variable/element. 

We can also run this for ```Medu``` with this command: 

```student$Fedu <- recode(student$Fedu,"0" = "No Formal Education", "1" = "Up to 4th Grade", "2" = "Up to 9th Grade", "3" = "Secondary Education", "4" = "Higher Ed")```

And so now we have a variable set up for FEDU, a variable set up for MEDU and HIGHER is all ready. And yet, if we try and run a chi-square for this, we may see an error like, "must be the same size" or something similar. This basically means that one of the variables has a different N than others.

### <a id="filt"></a> Filtering / Layers

Along those lines, let's take a look at the Mom and Dad education levels. One of the things that stands out for me is that "0" or "none". 

To me, this potential answer is going to throw off a lot of data. From a frequency perspective, these are outliers and could impact the entirety of our dataset. So, I want to remove them as we cannot know what, "no formal education" really means. So let's filter these data and send them to a new dataframe: 

```fifedu <- filter(student, Fedu == "Up to 4th Grade" | Fedu == "Higher Ed" | Fedu == "Up to 9th Grade" | Fedu == "Secondary Education")```

and for mothers:

```fimedu <- filter(student, Medu == "Up to 4th Grade" | Medu == "Higher Ed" | Fedu == "Up to 9th Grade" | Medu == "Secondary Education")```

And so now we have 2 dataframes that are ready for analysis that we can then use to do our chi-square analysis. Before we do that, let's export these data so we can mess with them elsewhere or, we can make sure we have a correction point should we mess up our data.

### <a id="export"></a> Exporting

Exporting a dataframe is relatively easy. All it takes is the following command: 

> write.csv(dataframename,"filename.csv")

And this will create a csv file in your working directory. If you do not know where that is, type: 

> directory <- getwd()

And in doing this, you will at least know where on your system your csv's will write to. 

So now we have re-coded, separated, and evened-out our data. Let's do some Chi-Squares.

------

## <a id="chir"></a> χ² in R

So first things first, to run a χ² in R, all we need is the following command: 

```chisq.test(fifedu$Medu,fifedu$higher)```

This gives us all our datapoints and that's great. And yet, we do not have Cramer's V or Phi. This can be done through 2 different packages: ```lsr``` or ```rcompanion``` and I'll leave it up to you to decide which: 

```cramerV(fifedu$Fedu,fifedu$higher)```

And that's the dad's data done. Yet, we did not create the contingency table. Let's run the mom's first so we can get those data. They are the same commands but different 

```chisq.test(fimedu$Medu,fimedu$higher)```

```cramerV(fimedu$Fedu,fimedu$higher)```

And so now we have our dad and mom's impact. You should see something like: 

* Dad: 
	* X-squared = 14.041, 
	* df = 3, 
	* p-value = 0.002849 (Significant)
	* Cramer's V: .189 (Weak)
* Mom:
	* X-squared = 9.2181, 
	* df = 3, 
	* p-value = 0.02653 (Significant)
	* Cramer's V = .1533 (Weak)

We also see a Warning message:
In chisq.test(fimedu$Medu, fimedu$higher) :
  Chi-squared approximation may be incorrect

This is based on our expected values being lower than 5. Let's talk a bit about contingency tables.

## <a id="expect"></a> Expected Values and Contingency Tables

chisq.test(fimedu$Medu,fimedu$higher)$expected

chisq.test(fifedu$Fedu,fifedu$higher)$expected

