from matplotlib_venn import venn3
import matplotlib.pyplot as plt

venn3(subsets = (19,20,21,18,20,19,19,20,21),
set_labels=('male','female','others')
)
plt.title("Venn Diagram of gender and income")
plt.show()
