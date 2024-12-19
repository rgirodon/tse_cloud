import { DynamoDBClient, PutItemCommand } from "@aws-sdk/client-dynamodb";

const client = new DynamoDBClient({});

const input = {
    "TableName": "save_christmas_gifts",
    "Item": {
      "child_name": {
        "S": "Harry P."
      },
      "gift_id": {
        "N": "2"
      },
      "gift_label": {
        "S": "Magic Wand"
      }
    }
  };

  const command = new PutItemCommand(input);
  
  const response = await client.send(command);