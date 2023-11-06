import matplotlib.pyplot as plt
import numpy as np

data = np.random.normal(0, 1, 1000) 

plt.hist(data, bins=20, edgecolor='k', alpha=0.7)

plt.xlabel('Value')
plt.ylabel('Frequency')
plt.title('Histogram')

plt.show()
