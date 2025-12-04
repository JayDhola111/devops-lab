#!/bin/bash

# Part 1: Check if the user provided an argument
if [ -z "$1" ]
then
    echo "Error: Please provide a tool name."
    exit 1
fi

TOOL=$1
echo "Setup is starting for $TOOL"

# Part 2: Check if the directory exists
if [ -d "config" ]
then
    echo "Config directory already exists."
else
    mkdir config
    echo "Config directory created."
fi

echo "Creating environment folders..."

for ENV in dev qa prod
do
    mkdir -p config/$ENV
    echo "Created config/$ENV"
done
