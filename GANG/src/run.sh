#!/bin/bash

malware=("adware" "sms" "banking" "riskware" "full1500" "full")
file="2436"
for mal in ${malware[@]}; do
	python3 modifiy_feature_vectors.py /home/kimngan/new_plan/full/${file}/${mal}
	mkdir ./blackboxmodel/${file}/${mal}_64
	mv ./blackboxmodel/blackbox_1d_cnn.h5 ./blackboxmodel/${file}/${mal}_64
	mv ./blackboxmodel/blackbox_dt_model.pickle ./blackboxmodel/${file}/${mal}_64
	mv ./blackboxmodel/blackbox_lr_model.pickle ./blackboxmodel/${file}/${mal}_64
	mv ./blackboxmodel/blackbox_rf_model.pickle ./blackboxmodel/${file}/${mal}_64
	mv ./blackboxmodel/blackbox_svm_model.pickle ./blackboxmodel/${file}/${mal}_64
	mv ./blackboxmodel/blackbox_xgBoost_model.pickle ./blackboxmodel/${file}/${mal}_64

	cp /home/kimngan/GANG-MAM_ReleaseV1.0-/GANG/src/blackboxmodel/blackbox_1d_cnn.h5 ./blackboxmodel
	cp /home/kimngan/GANG-MAM_ReleaseV1.0-/GANG/src/blackboxmodel/blackbox_dt_model.pickle ./blackboxmodel
	cp /home/kimngan/GANG-MAM_ReleaseV1.0-/GANG/src/blackboxmodel/blackbox_lr_model.pickle ./blackboxmodel
	cp /home/kimngan/GANG-MAM_ReleaseV1.0-/GANG/src/blackboxmodel/blackbox_rf_model.pickle ./blackboxmodel
	cp /home/kimngan/GANG-MAM_ReleaseV1.0-/GANG/src/blackboxmodel/blackbox_svm_model.pickle ./blackboxmodel
	cp /home/kimngan/GANG-MAM_ReleaseV1.0-/GANG/src/blackboxmodel/blackbox_xgBoost_model.pickle ./blackboxmodel
done