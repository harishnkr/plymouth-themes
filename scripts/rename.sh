#!/bin/bash

# Pad numbers to four digits
for file in *.png; do
    mv "$file" "$(printf "%04d.png" "${file%.*}")"
done

# Reset the initial number
counter=1

# Loop through all PNG files in the directory
for file in *.png; do
    # Remove leading zeroes from the filename
    filename=$(echo "$file" | sed 's/^0*//')
    
    # Create the new filename without leading zeroes
    newname="${counter}.png"
    
    # Check if the file exists
    if [ -e "$newname" ]; then
        echo "File '$newname' already exists. Skipping..."
    else
        # Rename the file
        mv "$file" "$newname"
        echo "Renamed '$file' to '$newname'"
    fi
    
    # Increment the counter
    ((counter++))
done

