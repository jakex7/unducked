#!/bin/bash

OUTPUT_ZIP="unducked.zip"

if [ -f "$OUTPUT_ZIP" ]; then
    echo "Removing old $OUTPUT_ZIP..."
    rm "$OUTPUT_ZIP"
fi

FILES_TO_INCLUDE=("img" "index.html" "manifest.json" "newtab.html" "newtab.js")

zip -r "$OUTPUT_ZIP" "${FILES_TO_INCLUDE[@]}"

if [ $? -eq 0 ]; then
    echo "Successfully created $OUTPUT_ZIP."
else
    echo "Error: Failed to create $OUTPUT_ZIP."
fi
