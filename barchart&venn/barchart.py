import matplotlib.pyplot as plt

subjects = ['TCS', 'SE', 'CN', 'DWM', 'IP']
marks = [50, 65, 55, 70, 75]

plt.bar(subjects, marks)

plt.xlabel('subjects')
plt.ylabel('marks')
plt.title('BarChart')

plt.show()
