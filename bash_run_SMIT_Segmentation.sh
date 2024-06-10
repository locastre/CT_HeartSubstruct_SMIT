#!/bin/bash

#Use SMIT
use_smit=1 #Use SMIT not SMIT+

#Data folder and there need a 'data.json' file in the folder 
data_dir='/lab/deasylab1/Jue/Clinical_experiment/CT_Lung_SMIT-main/test_data/'

#Segmentation output folder 
save_folder='/lab/deasylab1/Jue/Clinical_experiment/CT_Lung_SMIT-main/test_data/Seg/'




#Some configrations for the model, no need to change
#Trained weight 
load_weight_name='/lab/deasylab1/Jue/Clinical_experiment/CT_Lung_SMIT-main/Lung_gtv_trained_weight/model.pt'
a_min=-500
a_max=500
space_x=1.5
space_y=1.5
space_z=2.0
out_channels=2

python run_segmentation.py \
    --roi_x 128 \
    --roi_y 128 \
    --roi_z 128 \
    --space_x $space_x \
    --space_y $space_y \
    --space_z $space_z \
    --data_dir $data_dir \
    --out_channels $out_channels \
    --load_weight_name $load_weight_name \
    --save_folder $save_folder \
	--a_min=$a_min \
	--a_max=$a_max \
    --use_smit $use_smit