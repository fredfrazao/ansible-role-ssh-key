#!/bin/bash
invent=inventory-prod*
Playbook=site.yml
for f in $invent
do
	  echo "Starting running  $Playbook on $f Inventorty.."
	    # take action on each file. $f store current file name
	    #cat  $f
	    ansible-playbook $Playbook -i $f  --extra @/mnt/c/ad-hoc/connection_dmz.yml
	done
