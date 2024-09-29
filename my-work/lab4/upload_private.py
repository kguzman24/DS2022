#!/usr/bin/python3
import boto3
s3 = boto3.client('s3')

bucket = 'ds2022-sae3gg'
local_file = 'project/another_hero.png'
object_name = 'another_hero.png'

with open(local_file, 'rb') as file_data:
	resp = s3.put_object(
		Body = file_data,
		Bucket = bucket,
		Key = object_name,
		ContentType='image/png'
		)
#"another_hero.png"
file_url = f"https://{bucket}.s3.amazonaws.com/{object_name}"
print(file_url)

