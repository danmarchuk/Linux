#!/bin/bash

# this script crates and account on the local system.
# you'll be pormpted for the account name and password

# Ask for the user name.
read -p 'Enter the username to create: ' USER_NAME

# Ask for the real name
read -p 'Enter the name of the person who this account for: ' COMMENT

# Ask for the password
read -p 'Enter the password for the user' PASSWORD

# Create the user.
useradd -c "${COMMENT}" -m ${USER_NAME}
# Set the password for the user.

# Force password chanfe on first login


