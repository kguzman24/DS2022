#!/usr/bin/python3
import boto3
s3 = boto3.client('s3')

bucket = 'ds2022-sae3gg'
local_file = '/home/karenguzman/DS2022/my-work/lab4/another_hero.png'
key = local_file
def upload_private(local_file, bucket, key):
        s3.put_object(
                Body = local_file,
                Bucket = bucket,
                Key = key,
		ACL = 'public-read'
        )
        file_url = f"https://{bucket}.s3.amazonaws.com/{key}"
        return file_url

upload_private(local_file, bucket, key)

