#!/usr/bin/env bash

# Directories to remove
directories=("CMakeFiles" "_skbuild" "build" "dist" "cmake")

# Files to remove
files=("CMakeCache.txt" "CMakeTmp" "main" "cmake_install.cmake" "ambilight")

# Remove directories
for dir in "${directories[@]}"; do
    if [ -d "$dir" ]; then
        rm -rf "$dir"
    fi
done

# Remove files
for file in "${files[@]}"; do
    if [ -e "$file" ]; then
        rm "$file"
    fi
done

# Remove shared libraries
find . -type f -name "*.so*" -exec rm {} +
