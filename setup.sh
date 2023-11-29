#!/bin/bash

# Create a 'themes' directory if it doesn't exist
mkdir themes

# Clone the Hugo theme 'PaperMod' from the specified GitHub repository
git clone https://github.com/adityatelange/hugo-PaperMod.git themes/hugo-PaperMod

# Generate the static site using Hugo
hugo
