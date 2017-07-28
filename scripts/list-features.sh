#!/bin/bash

for file in `find . -name "*.feature"`  
do
     head -n 1 $file
done