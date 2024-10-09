import boto3

ec2 = boto3.client('ec2')


# Retrieves all regions/endpoints that work with EC2
# response = ec2.describe_regions()
# print('Regions:', response['Regions'])

# Retrieves availability zones only for region of the ec2 object
# response = ec2.describe_availability_zones()
# print('Availability Zones:', response['AvailabilityZones'])

# Retrieves instances
response = ec2.describe_instances(
    Filters=[
        {
            'Name': 'instance-type',
            'Values': [
                't2.micro',
            ],
        },

])
print('Instances:', response['Reservations'][0]['Instances'][0]['PublicDnsName'])