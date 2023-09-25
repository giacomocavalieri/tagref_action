#!/bin/sh -l

# Install `tagref`
curl https://raw.githubusercontent.com/stepchowfun/tagref/main/install.sh -LSfs | sh

# Move to the repository's directory
cd /github/workspace

# Check if all references are valid
# and that all tags are actually used
tagref check && tagref list-unused --fail-if-any
