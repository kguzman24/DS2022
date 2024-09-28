#!/usr/bin/python3

import boto3
import requests


#bucket = 'ds2022-sae3gg'
#object_name = 'g'
#expires_in = int
def download_file(url, local_file):
	response = requests.get(url)

def upload_file(local_file, bucket, object_name):
	s3 = boto3.client('s3')
        s3.put_object(
                Body = local_file,
                Bucket = bucket,
                Key = key
        )
        file_url = f"https://{bucket}.s3.amazonaws.com/{key}"
        return file_url

def gen_presigned_url(bucket, object_name, expires_in=604800):
	s3 = boto3.client('s3')
	response = s3.generate_presigned_url(
		'get_object',
		Params{'Bucket': bucket_name, 'Key': object_name},
		ExpiresIn=expires_in
	)
	return response

