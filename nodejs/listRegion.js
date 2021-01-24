const jmespath = require('jmespath');

const AWS = require('aws-sdk');

const ec2 = new AWS.EC2({
  region: 'us-east-1'
});

ec2.describeRegions({
    }, 
    (err, data) => {
        if (err) {
            console.log(err);
        } 
        else {
            const regionNames = jmespath.search(data, 'Regions[].RegionName');

            regionNames.forEach((element, index) => {
                console.log('Region[' + index + '] : ' + element);
            });
        }
    });
