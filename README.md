# rotten-potatoes
###  Create application image and up the containers 

 ### how to works: 
the script build.sh receive arguments the python-version for construct image of app and app-version and copy this arguments for Dockerfile.template and create Dockerfile 

example: 
``bash build.sh python:3.8-slim-buster 1.0.0``

OR just build: 

``docker build . -t felipeschirmann/rotten-potatoes:v1.0.0``

``docker run -d -p 8085:5000 felipeschirmann/rotten-potatoes:v1.0.0``

![doc](https://raw.githubusercontent.com/felipeschirmann/rotten-potetoes/main/imgs/pottetoes.drawio.svg)

``docker-compose up -d``

![doc](https://raw.githubusercontent.com/felipeschirmann/rotten-potetoes/main/imgs/pottetoes.drawio.svg)