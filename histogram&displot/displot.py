import seaborn as sns
import matplotlib.pyplot as plt

data = [1.5, 2.0, 2.5, 3.0, 3.5, 3.5, 4.0, 4.5, 4.5, 5.0, 5.5, 5.5, 5.5, 6.0, 6.0]

sns.set_style('whitegrid')  
sns.displot(data, kde=True)  

plt.xlabel('Value')
plt.ylabel('Density')
plt.title('Displot')

plt.show()
