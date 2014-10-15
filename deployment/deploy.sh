#!/bin/bash
set -e
# needs to be run from main directory
if [[ "$TRAVIS_PULL_REQUEST" == "false" ]] && [[ "$TRAVIS_BRANCH" == "master" ]];  then
	openssl aes-256-cbc -K $encrypted_46f1a2582584_key -iv $encrypted_46f1a2582584_iv \
		in deployment/deployment_private_key.id_rsa.enc -out deployment/deployment_private_key.id_rsa -d
	chmod 600 deployment/deployment_private_key.id_rsa
	sftp -i deployment/deployment_private_key.id_rsa -oUserKnownHostsFile=deployment/known_hosts -oPasswordAuthentication=no -b deployment/sftp_batch buildserver-uploads@macgyver.fablab.fau.de
else
	echo "skipping deployment: branch $TRAVIS_BRANCH pullrequest $TRAVIS_PULL_REQUEST"
fi
