#!/bin/bash

# run the unit tests
./bin/rake test

# capture return code from the last process completed
rc=$?

# using colors in bash
# https://discussions.apple.com/thread/1796022?start=0&tstart=0
RED="[31m"
GREEN="[32m"
RESET="[m"

# if return code (rc) is 0, everything went well
# else there was a problem
if [[ $rc != 0 ]] ; then
    echo "${RED}The tests didn't seem to pass; is the MongoDb even running? (./start-db.sh to start the Mongo database)${RESET}"

else
    echo "${GREEN}The tests appear to have passed!${RESET}"

fi
