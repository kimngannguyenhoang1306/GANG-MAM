import pandas as pd

object1 = pd.read_pickle(r'blackbox_svm_model.pickle')
print(object1)

object2 = pd.read_pickle(r'blackbox_dt_model.pickle')
print(object2)
