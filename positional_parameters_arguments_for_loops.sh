#!/bin/bash

echo "You executed this command: ${0}"

# Display the path and the filename of the script.
echo "You used $(dirname ${0}) as the path to the $(basename ${0}) script."

#Tell them how many arguments they passed in.
# (inside the script they are parameters, outside they are arguments.)
NUMBER_OF_PARAMETERS="${#}"
echo "You supplied ${NUMBER_OF_PARAMETERS} argument(s) on the command line."

# Make sure they at least supply one argument.
if [[ "${NUMBER_OF_PARAMETERS}" -lt 1 ]]
then
	echo "Usage: ${0} USER_NAME [USER_NAME]..."
	exit 1
fi

# Generate and display a password for each parameter.
for USER_NAME in "${@}"
do
	PASSWORD=$(date +%s%N | sha256sum)
	echo "${USER_NAME}: ${PASSWORD}"
done
