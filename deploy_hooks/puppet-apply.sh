#!/bin/bash

BASE_DIR="/etc/puppet/"

/usr/bin/puppet apply --modulepath=${BASE_DIR}/modules ${BASE_DIR}/jenkins/manifests/hello_jenkins.pp
/usr/bin/puppet apply --modulepath=${BASE_DIR}/modules ${BASE_DIR}/jenkins/manifests/hello_nginx.pp
