# -*- coding: utf-8 -*-
"""
Created on Mon Dec 12 14:46:27 2022

@author: admin
"""

import pandas as pd
from scipy.stats import ttest_1samp

indm = pd.read_csv("Indometh.csv")
print(indm.head())

ttest_1samp(indm['Subject'], popmean=0.3, alternative="greater")

