# -----------------------------------------------------------------------------
# Copyright (c) 2023, NVIDIA CORPORATION. All rights reserved.
#
# NVIDIA CORPORATION and its licensors retain all intellectual property
# and proprietary rights in and to this software, related documentation
# and any modifications thereto. Any use, reproduction, disclosure or
# distribution of this software and related documentation without an express
# license agreement from NVIDIA CORPORATION is strictly prohibited.
# -----------------------------------------------------------------------------

# usage: tnt_download.sh <path_to_tnt>

echo "Download fixed poses for Ignatius"
gdown 10pcCwaQY6hqyiegJGdgmLp_HMFOnsmgq
gdown 19TT5aTz3z60eUVIDhFJ7EgGqpcqQnJEi
mv Ignatius_COLMAP_SfM.log ${1}/Ignatius/Ignatius_COLMAP_SfM.log
mv Ignatius_trans.txt ${1}/Ignatius/Ignatius_trans.txt

echo "Compute intrinsics, undistort images and generate json files. This may take a while"
python3 projects/neuralangelo/scripts/convert_tnt_to_json.py --tnt_path "/content/drive/MyDrive/neuralangelo_datasets/tanks_and_temples"
