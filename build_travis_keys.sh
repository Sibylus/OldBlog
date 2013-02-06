#!/bin/bash

# To generate secure SSH deploy key for a github repo to be used from Travis
gbase64 --wrap=0 ~/.ssh/id_rsa > ~/.ssh/id_rsa_deploy_base64
ENCRYPTION_FILTER="echo \$(echo \"- secure: \")\$(travis encrypt \"\$FILE='\`cat $FILE\`'\" -r Sibylus/sibylus.github.com)"
gsplit --bytes=100 --numeric-suffixes --suffix-length=2 --filter="$ENCRYPTION_FILTER" ~/.ssh/id_rsa_deploy_base64 id_rsa_
 
# To reconstitute the private SSH key once running inside Travis (typically from 'before_script')
echo -n $id_rsa_{00..30} >> ~/.ssh/id_rsa_base64
gbase64 --decode --ignore-garbage ~/.ssh/id_rsa_base64 > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config