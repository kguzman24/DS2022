#!/usr/bin/python3
import boto3
s3 = boto3.client('s3')

bucket = 'ds2022-sae3gg'
local_file = 'project/another_hero2.png'
object_name = 'another_hero2.png'
with open(local_file, 'rb') as file_data:
        resp = s3.put_object(
                Body = file_data,
                Bucket = bucket,
                Key = object_name,
                ACL = 'public-read',
                ContentType='image/png'
        )
#another_hero2.png
file_url = f"https://{bucket}.s3.amazonaws.com/{object_name}"
print(file_url)

