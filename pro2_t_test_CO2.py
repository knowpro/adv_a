# -*- coding: utf-8 -*-
"""
Created on Mon Dec 12 14:35:55 2022

@author: admin
"""

import pandas as pd
from scipy.stats import ttest_1samp

co2 = pd.read_csv("CO2.csv")
print(co2.head())

ttest_1samp(co2['uptake'], popmean=30, alternative="two-sided")

ttest_1samp(co2['uptake'], popmean=30, alternative="greater")

ttest_1samp(co2['uptake'], popmean=30, alternative="less")
# This may mean that uptake is less than 30.