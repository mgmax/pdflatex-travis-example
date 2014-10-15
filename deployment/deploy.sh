#!/bin/sh
# needs to be run from main directory
sftp -i deployment/deployment_private_key.id_rsa -b deployment/sftp_batch buildserver-uploads@macgyver.fablab.fau.de
