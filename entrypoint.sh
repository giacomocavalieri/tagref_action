#!/bin/sh -l

# SETUP ------------------------------------------------------------------------

# This makes sure that if any of the checks fails the whole script will fail
set -e

# Move to the repository's directory to check its code
cd /github/workspace


# VALIDATE SCRIPT INPUTS -------------------------------------------------------

if [[ $1 == "allow" ]]; then unused_tags="$1"
elif [[ $1 == "forbid" ]]; then unused_tags="$1"
else
    echo "The \"unused_tags\" argument must be either \"allow\" or \"forbid\"" >&2
    echo " - \"allow\" will allow notes that are not referenced" >&2
    echo " - \"forbid\" will make the CI fail if there's any note that is not referenced" >&2
    exit 1
fi


# TAGREF CHECKS ----------------------------------------------------------------

# Install tagref
curl https://raw.githubusercontent.com/stepchowfun/tagref/main/install.sh -LSfs | sh

# Check all references are valid, this step can never be skipped 
tagref check

# Check all tags are actually referenced if the unused tags are not allowed
if [[ $unused_tags == "forbid" ]]; then
    tagref list-unused --fail-if-any
fi
