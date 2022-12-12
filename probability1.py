from scipy.stats import norm
import pandas as pd
import numpy as np

norm.ppf(0.98,313,57)
norm.ppf(0.9,93,22)

p_a=norm.sf(450, 313, 57)
p_b=norm.sf(150, 93, 22)
p_a + p_b - p_a*p_b

x = np.array([0,1,2,3,4,5])
p = np.array([0.3,0.2,0.15,0.1,0.13,0.12])
cp = np.cumsum(p)

rnd = np.array([0.33,0.98,0.38,0.22,0.52,0.49,0.51])
prob  = 0.52
i_sim = np.sum(cp<prob)
x[i_sim]

simulated = []
for prob in rnd:
  i_sim = np.sum(cp<prob)
  simulated.append(x[i_sim])            
print(simulated)

#supply
x=np.array([10,20,30,40,50])
c=np.array([40,50,190,150,70])
p=c/500
cp=np.cumsum(p)
cp
rnd_supply=np.array([0.34,0.9,0.20,0.45,0.68])

sim_dem = []
for prob in rnd_supply:
  i_sim = np.sum(cp<prob)
  sim_dem.append(x[i_sim])            
print(sim_dem)

#demand

