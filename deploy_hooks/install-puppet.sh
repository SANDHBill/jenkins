#!/bin/bash

# Check to see that Puppet itself is installed ornot
yum list installed puppet &> /dev/null
if [ $? != 0 ]; then
    yum -y install puppet
fi

# Create the base directory for the system-wide Puppet modules
mkdir -p /etc/puppet/modules

puppet="/usr/bin/puppet"

# Check for each of the modules we need. If they're not installed, install them.
for module in puppetlabs/stdlib puppetlabs/java jfryman/nginx stahnma/epel  rtyle/jenkins; do
    $puppet module list | grep -q $(basename $module)
    if [ $? != 0 ]; then
        $puppet module install $module
    fi
done

exit 0
