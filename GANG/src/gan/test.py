from keras.models import load_model
import pandas as pd
import pickle5 as pickle
import numpy 
import numpy as np
import keras
import tensorflow as tf
from keras.models import Sequential
from keras.layers import Dense, Conv1D, Flatten, MaxPooling1D
from numpy import unique
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score, recall_score, precision_score, f1_score
from sklearn.linear_model import LogisticRegression
from sklearn.svm import SVC
from xgboost import XGBClassifier
from sklearn.ensemble import RandomForestClassifier
from torch.utils.data import DataLoader
import warnings
import sys
generator = load_model('./Generator_model_gan_.h5', compile = False)
classifierSvm = SVC(gamma='scale',kernel='linear',probability=True)
with open("./blackbox_svm_model.pickle","wb") as file_:
		pickle.dump(classifierSvm, file_, -1)
print(generator.summary())
