aws ec2 run-instances --image-id ami-069339bea0125f50d --count 1 \
     --instance-type t2.2xlarge --key-name vagadia-us-west-1 \
     --subnet-id subnet-0ea5c8cf695b964a2 --user-data file://userdata.txt \
     --region us-west-1
