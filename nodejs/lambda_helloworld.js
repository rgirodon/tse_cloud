console.log('Loading function');

exports.handler = async (event) => {

    console.log('value1 =', event.key1);
    console.log('value2 =', event.key2);
    console.log('value3 =', event.key3);
    
    return event.key1; 
};

// Lambda function listening to SQS
exports.handler = async function(event) {
    
    event.Records.forEach(record => {
        
        const { body } = record;
        
        console.log(body);
    });
    return {};
};