# Chapter 10 - Inferences about Means and Proportions with Two Populations

Up until this chapter, we have been primarily concerned with the test statistics applied to a single population. This is a powerful concept and one that affords us the capacity to make very wide-reaching assertions and inferences about populations. 

And yet, humans are complex and if we've learned anything over COVID, that complexity can be overwhelming. 

In this section, we're going to concern ourselves with interval estimates about 2 populations. There are tests for more than 3, but that is beyond the scope of the class.

For the most part, we've basically been nailing this down to 3 specific instances: 

1. Inferences with population parameters known.
1. Inferences with only sample statistics.
1. Inferences with only proportions.

That trend continues but we add something new, something fresh!

And that freshness is matched-sample t-tests. YAY! Let's walk through these.

---------------- Table of Contents ---------------- 

1. [Terms for the Chapter](#terms)
1. [Formulas for this chapter](#formulas)
1. [Inferences about two populations with parameters known](#inf2kno)
	* [Problem 1 - Test Scores](#ppk-1)
	* [Problem 2 - Test Scores](#ppk-2)
1. [Inferences about two populations with parameters unknown](#inf2unkno)
	* [Problem 1 - ](#unkno-1)
1. [Inferences about two populations with only proportions](#inf2pop)
	* [Problem 1 - ](#inf2pop-1)
1. [Matched Sample t-tests](#matsampt)
	* [Problem 1 - ](#matsampt-1)

---------------- Table of Contents ---------------- 

## <a id"terms"></a> Terms for the Chapter

* Independent Random Samples:

* Matched Samples:

* Pooled Estimator of p:

## <a id="formulas"></a>Formulas for this chapter

![Formulas for this Chapter](/images/dbm-1.png)
![Formulas for this Chapter](/images/dbm-2.png)

## <a id="inf2kno"></a>Inferences about two populations with parameters known


### <a id="ppk-1"></a> 
We will first try an problem without any context at all. After that, we'll add some humans in there.

|Sample 1|Sample 2|
|--------|--------|
|n<sub>1</sub> = 50|n<sub>2</sub> = 35|
|x̄<sub>1</sub> = 11.6|x̄<sub>2</sub> = 11.6|
|σ<sub>1</sub> = 2.2|σ<sub>2</sub> = 3.0|

1. What is the point estimate of the difference between the two populations?

	* x̄<sub>1</sub> = 11.6|x̄<sub>2</sub> = 13.6 – 11.6 = 2

1. Provide a 90% CI for the difference between the two population means.

	* Z<sub>σ/2</sub> = 1.645 (90% CI results in this.)
	* x̄<sub>1</sub> - x̄<sub>2</sub> ± 1.645√((σ<sub>1</sub>)<sup>2</sup>/n<sub>1</sub>)+((σ<sub>2</sub>)<sup>2</sup>/n<sub>2</sub>) 
	* 2±1.645√((2.2)<sup>2</sup>/50)+((3)<sup>2</sup>/35)
	* 2±.98 or 1.02 to 2.98

1. Provide a 95% CU for the difference between the two population means.

	* Z<sub>σ/2</sub> = 1.96 (90% CI results in this.)
	* x̄<sub>1</sub> - x̄<sub>2</sub> ± 1.96√((σ<sub>1</sub>)<sup>2</sup>/n<sub>1</sub>)+((σ<sub>2</sub>)<sup>2</sup>/n<sub>2</sub>) 
	* 2±1.96√((2.2)<sup>2</sup>/50)+((3)<sup>2</sup>/35)
	* 2±1.17 or .83 to 3.17

### <a id="ppk-2"></a> Let's Connect this to an actual example with consequences.

> A test was confucted on two difference classes to see if there was any significant difference between the performance of two teachers. The final exam scores of 15 students were sampled in the 1st class yielding a mean of 82 and a std of 2.5. The mean final exam score of the 2nd class was 84 with a std of 1.7 with a sample of 12 students. 

* Determine if there is any major difference at a 5% signficance level.



## <a id="inf2unkno"></a>Inferences about two populations with parameters unknown

### <a id="unkno-1"></a> 

> A business owner is in the process of deciding whether or not to invest in a new factory that refines oil in order to meet the high demand for that commodity. A test showed that the old factor refines oil at a mean rate of 3.1L per second at a std of 1.0 using a sample size of 40. The new factor was measured to refine oil at a mean rate of 3.8L per second at a standard deviation of 1.5 using sample size of 36. Determine if there is any major difference at the 10% significance level.

## <a id="inf2pop"></a>Inferences about two populations with only proportions

### <a id="inf2pop-1"></a> 

> Company XYZ manufactures laptops. For quality control, two sets of laptops were tested. In the first group. 32 out of 800 were found to contain some sort of defect. In the second group, 30 out of 500 were found to have a defect. Is the difference between the two groups significant? Use 95%.

## <a id="matsampt"></a>Matched Sample t-tests



### <a id="matsampt-1"></a> Problem 1 - 

> A study was conducted to determine the effectiveness of a weight loss program. The table below shows the before and after weights of 10 subjects in the program. Is this program effective for reducing weight? 95% CI/MoE.

|No|Before|After|
|--|------|-----|
|01|185|169|
|02|192|187|
|03|206|193|
|04|177|176|
|05|225|194|
|06|168|171|
|07|256|228|
|08|239|217|
|09|199|204|
|10|218|195|
