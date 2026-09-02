#!/bin/bash

read -p "Enter Age: " age

if [ $age -lt 18 ]; then
    echo "You are not eligible to vote."
else
    echo "You are eligible to vote."
fi