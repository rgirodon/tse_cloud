const jmespath = require('jmespath');

const AWS = require('aws-sdk');

const ec2 = new AWS.EC2({
  region: 'us-east-1'
});

ec2.describeInstances({
        Filters: [{
            Name: 'instance-state-name',
            Values: ['running']
        }],
        MaxResults: 10
    }, 
    (err, data) => {
        if (err) {
            console.log(err);
        } 
        else {
            const instanceIds = jmespath.search(data, 'Reservations[].Instances[].InstanceId');
            console.log(instanceIds);
        }
    });
