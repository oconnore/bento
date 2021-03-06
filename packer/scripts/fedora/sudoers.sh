#!/bin/bash -eux

sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=sudo' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers
sed -i -r -e 's/Defaults\s+(.*)requiretty(.*)/Defaults \1\2/' /etc/sudoers
sed -i -r -e 's/Defaults\s*$//g' /etc/sudoers
