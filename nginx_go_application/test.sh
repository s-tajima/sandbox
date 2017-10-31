#!/bin/bash

curl localhost:10080
curl localhost:10080/proxy
curl -XPOST -F "test=1" localhost:10080/proxy


