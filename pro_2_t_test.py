# -*- coding: utf-8 -*-
"""
Created on Mon Dec  12 14:25:54 2022

@author: admin
"""

import pandas as pd
from scipy.stats import ttest_1samp

pg = pd.read_csv("PlantGrowth.csv")

ttest_1samp(pg['weight'], popmean=6, alternative="two-sided")

ttest_1samp(pg['weight'], popmean=6, alternative="greater")

ttest_1samp(pg['weight'], popmean=6, alternative="less")