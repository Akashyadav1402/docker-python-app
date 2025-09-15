#!/bin/bash
docker build -t my-flask-app .
docker run -d -p 5001:5001 my-flask-app

echo "Wait 20s for application up!"
sleep 20
curl localhost:5001
