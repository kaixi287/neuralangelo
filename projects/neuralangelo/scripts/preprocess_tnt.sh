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

echo "Compute intrinsics, undistort images and generate json files. This may take a while"
python3 projects/neuralangelo/scripts/convert_tnt_to_json.py --tnt_path "/content/drive/MyDrive/neuralangelo_datasets/Ignatuis"
