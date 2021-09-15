#!/bin/sh
# https://hub.docker.com/r/lambci/lambda

(
cd $(dirname "$0")
dockerDir=src

# 必要なら初期化
if [ ! -d "$dockerDir" ];then
    mkdir "$dockerDir"
    echo "
import json

def lambda_handler(event, context):
    # TODO implement
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }
" > "$dockerDir/lambda_function.py"
fi
cd "$dockerDir"

docker run --rm -v "$PWD":/var/task:ro,delegated lambci/lambda:python3.8 lambda_function.lambda_handler


)
