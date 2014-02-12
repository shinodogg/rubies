require 'rubygems'
require 'aws-sdk'

AWS.config(
  :access_key_id => 'xxx', 
  :secret_access_key => 'xxx'
)

bucket_name = 'xxx'
file_name = 'xxx'

# Get an instance of the S3 interface.
s3 = AWS::S3.new(:region => "ap-northeast-1")

bucket = s3.buckets['eshinoha-demo-2014']
object = bucket.objects['github_aws.png']

url = object.url_for(:read, :expires => 60)
p url
