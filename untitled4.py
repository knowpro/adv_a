import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


import os
os.chdir(r"C:\Hogwarts\advanced_analytics")

car = pd.read_csv("Cars93.csv")
print(car.info())

Cars93 = pd.read_csv('cars93.csv')

Cars93['Type'].value_counts(normalize=True)

Cars93['AirBags'].value_counts(normalize=True)

pd.crosstab(Cars93['Type'],Cars93['AirBags'],normalize='all',margins=True)

pd.crosstab(Cars93['Type'],Cars93['AirBags'],normalize='columns',margins=True)