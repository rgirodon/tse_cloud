import { DynamoDBClient, QueryCommand } from "@aws-sdk/client-dynamodb";

const client = new DynamoDBClient({});

const input = {
    "TableName": "save_christmas_gifts",
    "KeyConditionExpression": "child_name = :child_name",
    "ExpressionAttributeValues": {
      ":child_name": {
        "S" : "Harry P."
      }
    }
  };

  const command = new QueryCommand(input);
  
  const response = await client.send(command);

  console.log(response.Items.forEach( 
    (item) =>  {
      console.log(item.gift_label.S);
    }));