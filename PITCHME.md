---?image=style/KU-background.png
### Data analysis and statistical methods
### in R
#### Adrian Gabriel Zucco 
##### Center for Translational Neuromedicine

---

## Pre-requisites
- Install [R](https://mirrors.dotsrc.org/cran/)
- Install [RStudio](https://www.rstudio.com/products/rstudio/download/#download)

### Libraries
Execute inside R:
```r
install.packages("tidyverse")
install.packages("readxl")
```

---

### [Mice Protein Expression Data Set](https://archive.ics.uci.edu/ml/datasets/Mice+Protein+Expression#)

Expression levels of 77 proteins measured in the cerebral cortex of 8 classes of control and Down syndrome mice exposed to context fear conditioning, a task used to assess associative learning.

> Higuera, C., Gardiner, K.J. and Cios, K.J., 2015. Self-organizing feature maps identify proteins critical to learning in a mouse model of down syndrome. PloS one, 10(6), p.e0129126.


---

## Import data into R
There are different functions to import data into R according to the format of the file:
```r
# Excel files
data = read_excel("./your_dataset.xls")
# Tab-separated files (each column separated by a tab)
data = read_tsv("./your_dataset.tsv")
# Comma-separated files
data = read_csv("./your_dataset.csv")
```
In our case:
```r
data = read_excel("../datasets/Data_Cortex_Nuclear.xls")
```

---

## Have a look at the data
```r
# Execute the variable that stores the data to see its content
print(data)
```

+++

Output:
```
# A tibble: 1,080 x 82
   MouseID DYRK1A_N ITSN1_N BDNF_N NR1_N NR2A_N pAKT_N pBRAF_N pCAMKII_N pCREB_N pELK_N pERK_N pJNK_N PKCA_N pMEK_N
   <chr>      <dbl>   <dbl>  <dbl> <dbl>  <dbl>  <dbl>   <dbl>     <dbl>   <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>
 1 309_1      0.504   0.747  0.430  2.82   5.99  0.219   0.178      2.37   0.232   1.75  0.688  0.306  0.403  0.297
 2 309_2      0.515   0.689  0.412  2.79   5.69  0.212   0.173      2.29   0.227   1.60  0.695  0.299  0.386  0.281
 3 309_3      0.509   0.730  0.418  2.69   5.62  0.209   0.176      2.28   0.230   1.56  0.677  0.291  0.381  0.282
 4 309_4      0.442   0.617  0.359  2.47   4.98  0.223   0.176      2.15   0.207   1.60  0.583  0.297  0.377  0.314
 5 309_5      0.435   0.617  0.359  2.37   4.72  0.213   0.174      2.13   0.192   1.50  0.551  0.287  0.364  0.278
 6 309_6      0.448   0.628  0.367  2.39   4.81  0.219   0.176      2.14   0.195   1.44  0.566  0.290  0.364  0.267
 7 309_7      0.428   0.574  0.343  2.33   4.47  0.225   0.184      2.01   0.196   1.61  0.510  0.300  0.371  0.278
 8 309_8      0.417   0.564  0.328  2.26   4.27  0.215   0.180      2.01   0.190   1.42  0.501  0.283  0.359  0.256
 9 309_9      0.386   0.538  0.318  2.13   4.06  0.207   0.168      1.86   0.181   1.26  0.477  0.267  0.337  0.243
10 309_10     0.381   0.499  0.362  2.10   3.60  0.228   0.188      1.72   0.188   1.41  0.455  0.324  0.368  0.284
# ... with 1,070 more rows, and 67 more variables: pNR1_N <dbl>, pNR2A_N <dbl>, pNR2B_N <dbl>, pPKCAB_N <dbl>,
#   pRSK_N <dbl>, AKT_N <dbl>, BRAF_N <dbl>, CAMKII_N <dbl>, CREB_N <dbl>, ELK_N <dbl>, ERK_N <dbl>, GSK3B_N <dbl>,
#   JNK_N <dbl>, MEK_N <dbl>, TRKA_N <dbl>, RSK_N <dbl>, APP_N <dbl>, Bcatenin_N <dbl>, SOD1_N <dbl>, MTOR_N <dbl>,
#   P38_N <dbl>, pMTOR_N <dbl>, DSCR1_N <dbl>, AMPKA_N <dbl>, NR2B_N <dbl>, pNUMB_N <dbl>, RAPTOR_N <dbl>,
#   TIAM1_N <dbl>, pP70S6_N <dbl>, NUMB_N <dbl>, P70S6_N <dbl>, pGSK3B_N <dbl>, pPKCG_N <dbl>, CDK5_N <dbl>,
#   S6_N <dbl>, ADARB1_N <dbl>, AcetylH3K9_N <dbl>, RRP1_N <dbl>, BAX_N <dbl>, ARC_N <dbl>, ERBB4_N <dbl>,
#   nNOS_N <dbl>, Tau_N <dbl>, GFAP_N <dbl>, GluR3_N <dbl>, GluR4_N <dbl>, IL1B_N <dbl>, P3525_N <dbl>,
#   pCASP9_N <dbl>, PSD95_N <dbl>, SNCA_N <dbl>, Ubiquitin_N <dbl>, pGSK3B_Tyr216_N <dbl>, SHH_N <dbl>, BAD_N <dbl>,
#   BCL2_N <dbl>, pS6_N <dbl>, pCFOS_N <dbl>, SYP_N <dbl>, H3AcK18_N <dbl>, EGR1_N <dbl>, H3MeK4_N <dbl>,
#   CaNA_N <dbl>, Genotype <chr>, Treatment <chr>, Behavior <chr>, class <chr>
```

---
## Type of variables

<table class="tg">
  <tr>
    <th class="tg-031e"></th>
    <th class="tg-031e">Description</th>
    <th class="tg-031e">Example</th>
  </tr>
  <tr>
    <td class="tg-031e">``int``</td>
    <td class="tg-031e">integers</td>
    <td class="tg-031e">1, 2, 3 ,4</td>
  </tr>
  <tr>
    <td class="tg-031e">``dbl``</td>
    <td class="tg-031e">doubles or real numbers</td>
    <td class="tg-031e">1.0, 2.3, 3.623, 4.78</td>
  </tr>
  <tr>
    <td class="tg-031e">``chr``</td>
    <td class="tg-031e">characters or string (text)</td>
    <td class="tg-031e">"Hello", "wild-type", "1"</td>
  </tr>
  <tr>
    <td class="tg-031e">``dttm``</td>
    <td class="tg-031e">date-times</td>
    <td class="tg-031e">"2018-06-09 16:45:40"</td>
  </tr>
  <tr>
    <td class="tg-031e">``lgl``</td>
    <td class="tg-031e">logical</td>
    <td class="tg-031e">TRUE / FALSE</td>
  </tr>
  <tr>
    <td class="tg-031e">``fctr``</td>
    <td class="tg-031e">factors</td>
    <td class="tg-031e">1, 1, 2, 3, 4, 4 Levels: 1, 2, 3, 4</td>
  </tr>
  <tr>
    <td class="tg-yw4l">``date``</td>
    <td class="tg-yw4l">dates</td>
    <td class="tg-yw4l">"2018-06-09"</td>
  </tr>
</table>
---

## Select filter etc

---

## Plot


---

## Statistical methods

Cite paper

---

### Useful links
- [R for Data Science](http://r4ds.had.co.nz/)
- [Statistical tests in R](http://r-statistics.co/Statistical-Tests-in-R.html)
- [Data analysis for the Life Sciences](http://genomicsclass.github.io/book/)
- [R course | Page piccinini](https://pagepiccinini.com/r-course/)

---