# grsf-api-docker

## Introduction 

The Global Record of Stocks and Fisheries (GRSF) is a centralized framework aimed at consolidating comprehensive information on fish stocks and fisheries from multiple, geographically dispersed data sources. 
This framework is designed to address the need for consistent, verified information on global fish populations and fishing activities, which is essential for effective management, traceability, and sustainability assessments.
GRSF API provides a formal way of interacting directly with the GRSF Knowledge Base (KB). The GRSF API consists of a collection of various endpoints that allow searching, counting, grouping and adding new information in the GRSF KB. 
All the service endpoints have been implemented as REST services. 

## Usage Instructions

To pull the image: 

```bash
docker pull yannismarketakis/grsf-api:latest
```

To run the container specify the values of the environment variables describing how to connect to the GRSF KB. 
The environment variables are: 

* VIRTUOSO_HOST: the host of the virtuoso triplestore (e.g. http://localhost)
* VIRTUOSO_PORT: the port that virtuoso triplestore listens for incoming connections (e.g. 1111)
* VIRTUOSO_USERNAME: the username of virtuoso triplestore (e.g. dba)
* VIRTUOSO_PASSWORD: the password of virtuoso triplestore (e.g. dba)

To run the container: 
```bash
docker run -d -p 8080:8080 \
           -e VIRTUOSO_HOST=http://localhost \
           -e VIRTUOSO_PORT=1111 \
           -e VIRTUOSO_USERNAME=dba \
           -e VIRTUOSO_PASSWORD=dba \
           yannismarketakis/grsf-api:latest
```
