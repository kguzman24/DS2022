#!/usr/bin/python3
import os
import boto3
import urllib.request
s3 = boto3.client('s3')

file_url = 'https://media.idownloadblog.com/wp-content/uploads/2016/11/Animated-GIF-Banana.gif'
local_file = 'project/my_file.gif'

bucket = 'ds2022-sae3gg'
object_name = 'downloaded-file.gif'
expires_in = 604800

os.makedirs(os.path.dirname(local_file), exist_ok=True)

#download
urllib.request.urlretrieve(file_url, local_file)

#upload
with open(local_file, 'rb') as file_data:
	s3.put_object(
		Body = file_data,
		Bucket = bucket,
		Key = object_name,
		ACL = 'public-read',
		ContentType='image/gif'
	)

url = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket, 'Key': object_name},
    ExpiresIn=expires_in
)
#gif
print(f"Presigned url: {url}")

