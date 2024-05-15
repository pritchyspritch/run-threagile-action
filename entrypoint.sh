#!/bin/sh -l

PATH=$PATH:/app
cd /app

echo $INPUT_MODEL_FILE # id of input variable
echo $INPUT_OPTIONAL_ARGS
echo $INPUT_OUTPUT_DIR
echo $INPUT_DFE_THREAGILE

if [ $INPUT_DFE_THREAGILE == 'true' ]
then
    python dfe_threagile.py
else
    mkdir -p "$GITHUB_WORKSPACE/$INPUT_OUTPUT_DIR"
    threagile -model "$GITHUB_WORKSPACE/$INPUT_MODEL_FILE" -output "$GITHUB_WORKSPACE/$INPUT_OUTPUT_DIR" $INPUT_OPTIONAL_ARGS -verbose
fi
