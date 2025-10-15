#!/bin/bash

ID = $(id -u)
if {
$ID ne 0
then 
echo "not root user"
else 
echo "Root User"
}