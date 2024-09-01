#!/bin/bash
http_code=$(curl -s -o /dev/null -I -w "%{http_code}" http://0.0.0.0:3000)
if [ $http_code == 302 ]; then
    echo "All good!" 
else
    echo "Server is not up!"
    echo "HTTP code is $http_code"
    exit 1
fi

