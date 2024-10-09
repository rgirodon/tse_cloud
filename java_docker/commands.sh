docker build . -t rgirodon/springboot_helloword

docker run -p 8080:8080 -d rgirodon/springboot_helloword

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 495342589097.dkr.ecr.us-east-1.amazonaws.com

docker tag rgirodon/springboot_helloword:latest 495342589097.dkr.ecr.us-east-1.amazonaws.com/rgirodon/springboot_helloword:latest

docker push 495342589097.dkr.ecr.us-east-1.amazonaws.com/rgirodon/springboot_helloword:latest