#!/bin/bash

curl localhost:10080
curl localhost:10080/proxy
curl -XPOST -F "test1=1" -F 'test2=2' localhost:10080/proxy


