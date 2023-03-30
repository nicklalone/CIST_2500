# Get our environment set up. 
library(lessR)
library(summarytools)
library(readr)

#if you didn't have them installed, you can:
install.packages("LessR")
install.packages("summarytools")

#bring in your data: 
#click on "Import Data" or type:
library(readr)
ttest_quiz_data <- read_csv("Desktop/ttest - quiz data.csv")

# check out our data out. 
#easiest way is just descr()

descr(ttest2)

# we might want to do a bit of exploratory stuff. 
# one aspect of these data is the "difference" between pre/post.
# to do that, we can just add a variable to our frame:

ttest2$diff <- ttest2$PostTest - ttest2$PreTest

# in the above, we want to basically test against the impact
# of training. So we are taking post and subtracting pre from it.
# it's not really useful but it does help us. Again, we want
# to do everything we can to look for things that don't make sense.

# so now, we're ready to do our t-test.
# pretty much we arrange this with the pre- thing first, post-thing later.
# think of it like X1 is what will be subtracted from X2.

ttest(PreTest,PostTest, data=ttest2, paired = TRUE)

# Let's give it a look. 
# ------ Describe ------ or the basics of your analysis.
# Difference:  n.miss = 0,  n = 25,   mean = 26.600,  sd = 13.307

#------ Normality Assumption ------ This tells us how normal
# our data are. You want your p-value > .05.
#Null hypothesis is a normal distribution of Difference.
#Shapiro-Wilk normality test:  W = 0.963,  p-value = 0.478

#------ Infer ------ This is the meat here.
#t-cutoff for 95% range of variation: tcut =  2.064 
#Standard Error of Mean: SE =  2.661 

#Hypothesized Value H0: mu = 0 with the next line the most important.
#Hypothesis Test of Mean:  t-value = 9.995,  df = 24,  p-value = 0.000

#Margin of Error for 95% Confidence Level:  5.493
#95% Confidence Interval for Mean:  21.107 to 32.093

#------ Effect Size ------ implies our power. Effect impact:
#small (d = 0.2), medium (d = 0.5), and large (d = 0.8) 
#Distance of sample mean from hypothesized:  26.600
#Standardized Distance, Cohen's d:  1.999

#------ Graphics Smoothing Parameter ------
#Density bandwidth for 7.962
#--------------------------------- 
#Plot 1: One-Group Plot
#Plot 2: Differences from Equality
#---------------------------------

