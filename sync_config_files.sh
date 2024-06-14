#!/bin/bash

# Function to copy files to the current directory
backup_files() {
    CONFIG_FILES=$(jq -r '.dirs[]' config-files.json)
    for FILE in $CONFIG_FILES; do
        EXPANDED_FILE=${FILE/#\~/$HOME}
        if [[ -f $EXPANDED_FILE ]]; then
            cp "$EXPANDED_FILE" .
            echo "Copied $EXPANDED_FILE to $(pwd)"
        else
            echo "File $EXPANDED_FILE does not exist, skipping."
        fi
    done
}

# Function to copy files back to the home directory
restore_files() {
    CONFIG_FILES=$(jq -r '.dirs[]' config-files.json)
    for FILE in $CONFIG_FILES; do
        EXPANDED_FILE=${FILE/#\~/$HOME}
        BASENAME=$(basename $FILE)
        if [[ -f $BASENAME ]]; then
            cp "$BASENAME" "$EXPANDED_FILE"
            echo "Copied $BASENAME to $EXPANDED_FILE"
        else
            echo "File $BASENAME does not exist in the current directory, skipping."
        fi
    done
}

# Main script logic
if [[ $# -ne 1 ]]; then
    echo "Usage: $0 {backup|restore}"
    exit 1
fi

case $1 in
backup)
    backup_files
    ;;
restore)
    restore_files
    ;;
*)
    echo "Invalid argument: $1"
    echo "Usage: $0 {backup|restore}"
    exit 1
    ;;
esac
