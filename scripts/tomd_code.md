Untitled
================

GitHub Documents
----------------

This is an R Markdown format used for publishing markdown documents to GitHub. When you click the **Knit** button all R code chunks are run and a markdown file (.md) suitable for publishing to GitHub is generated.

Including Code
--------------

You can include R code in the document as follows:

``` r
data = read_excel("../datasets/Data_Cortex_Nuclear.xls")
data
```

    ## # A tibble: 1,080 x 82
    ##    MouseID DYRK1A_N ITSN1_N BDNF_N NR1_N NR2A_N pAKT_N pBRAF_N pCAMKII_N
    ##    <chr>      <dbl>   <dbl>  <dbl> <dbl>  <dbl>  <dbl>   <dbl>     <dbl>
    ##  1 309_1      0.504   0.747  0.430  2.82   5.99  0.219   0.178      2.37
    ##  2 309_2      0.515   0.689  0.412  2.79   5.69  0.212   0.173      2.29
    ##  3 309_3      0.509   0.730  0.418  2.69   5.62  0.209   0.176      2.28
    ##  4 309_4      0.442   0.617  0.359  2.47   4.98  0.223   0.176      2.15
    ##  5 309_5      0.435   0.617  0.359  2.37   4.72  0.213   0.174      2.13
    ##  6 309_6      0.448   0.628  0.367  2.39   4.81  0.219   0.176      2.14
    ##  7 309_7      0.428   0.574  0.343  2.33   4.47  0.225   0.184      2.01
    ##  8 309_8      0.417   0.564  0.328  2.26   4.27  0.215   0.180      2.01
    ##  9 309_9      0.386   0.538  0.318  2.13   4.06  0.207   0.168      1.86
    ## 10 309_10     0.381   0.499  0.362  2.10   3.60  0.228   0.188      1.72
    ## # ... with 1,070 more rows, and 73 more variables: pCREB_N <dbl>,
    ## #   pELK_N <dbl>, pERK_N <dbl>, pJNK_N <dbl>, PKCA_N <dbl>, pMEK_N <dbl>,
    ## #   pNR1_N <dbl>, pNR2A_N <dbl>, pNR2B_N <dbl>, pPKCAB_N <dbl>,
    ## #   pRSK_N <dbl>, AKT_N <dbl>, BRAF_N <dbl>, CAMKII_N <dbl>, CREB_N <dbl>,
    ## #   ELK_N <dbl>, ERK_N <dbl>, GSK3B_N <dbl>, JNK_N <dbl>, MEK_N <dbl>,
    ## #   TRKA_N <dbl>, RSK_N <dbl>, APP_N <dbl>, Bcatenin_N <dbl>,
    ## #   SOD1_N <dbl>, MTOR_N <dbl>, P38_N <dbl>, pMTOR_N <dbl>, DSCR1_N <dbl>,
    ## #   AMPKA_N <dbl>, NR2B_N <dbl>, pNUMB_N <dbl>, RAPTOR_N <dbl>,
    ## #   TIAM1_N <dbl>, pP70S6_N <dbl>, NUMB_N <dbl>, P70S6_N <dbl>,
    ## #   pGSK3B_N <dbl>, pPKCG_N <dbl>, CDK5_N <dbl>, S6_N <dbl>,
    ## #   ADARB1_N <dbl>, AcetylH3K9_N <dbl>, RRP1_N <dbl>, BAX_N <dbl>,
    ## #   ARC_N <dbl>, ERBB4_N <dbl>, nNOS_N <dbl>, Tau_N <dbl>, GFAP_N <dbl>,
    ## #   GluR3_N <dbl>, GluR4_N <dbl>, IL1B_N <dbl>, P3525_N <dbl>,
    ## #   pCASP9_N <dbl>, PSD95_N <dbl>, SNCA_N <dbl>, Ubiquitin_N <dbl>,
    ## #   pGSK3B_Tyr216_N <dbl>, SHH_N <dbl>, BAD_N <dbl>, BCL2_N <dbl>,
    ## #   pS6_N <dbl>, pCFOS_N <dbl>, SYP_N <dbl>, H3AcK18_N <dbl>,
    ## #   EGR1_N <dbl>, H3MeK4_N <dbl>, CaNA_N <dbl>, Genotype <chr>,
    ## #   Treatment <chr>, Behavior <chr>, class <chr>

Including Plots
---------------

You can also embed plots, for example:

![](tomd_code_files/figure-markdown_github/pressure-1.png)

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
