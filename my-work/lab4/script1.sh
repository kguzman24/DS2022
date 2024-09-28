#!/bin/bash

read -p "Enter image URL: " URL1
read -p "Enter file name: " FILE1
curl "$URL1" -o "$FILE1"
aws s3 cp "$FILE1" s3://ds2022-sae3gg/
aws s3 presign --expires-in 604800 s3://ds2022-sae3gg/"$FILE1"

#image used: https://static.wixstatic.com/media/af7239_203ace07ac914ffb982608ba85b96908~mv2.png/v1/fill/w_595,h_665,al_c,lg_1,q_90,enc_auto/af7239_203ace07ac914ffb982608ba85b96908~mv2.png
#link:  https://ds2022-sae3gg.s3.us-east-1.amazonaws.com/another_hero.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAYHJANO5MZPUKPZLA%2F20240928%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240928T142741Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=81b2f64be79d9452c426b38abc495dc7e3eb608b02c3850e2f507ebf630c3170
