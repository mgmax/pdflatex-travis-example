#!/bin/sh
# needs to be run from main directory
if [[ $TRAVIS_PULL_REQUEST == "false" ]] && [[ $TRAVIS_BRANCH == "master"]];  then
	sftp -i deployment/deployment_private_key.id_rsa -oUserKnownHostsFile=deployment/known_hosts -oPasswordAuthentication=no -b deployment/sftp_batch buildserver-uploads@macgyver.fablab.fau.de
else
	echo "skipping deployment: branch $TRAVIS_BRANCH pullrequest $TRAVIS_PULL_REQUEST"
fi
