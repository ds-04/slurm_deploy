#!/bin/bash

# D Simpson 2024

# Check slurm user exists
if [[ $(mysql -u root --password={{ db_root_password }} -e "SELECT COUNT(*) FROM mysql.user WHERE user = 'slurm'" | tail -n1) != 0 ]];
then
  : #User exists
else
  #Create user
  mysql -u root --password={{ db_root_password }} -e "create user 'slurm'@'localhost' identified by '{{ slurmdbd_password }}';"
fi

# Always grant privs
mysql -u root --password={{ db_root_password }} -e "grant all on slurmdb.* TO 'slurm'@'localhost';"

# Check if DB exists, if not create - example not for use here
#if ! mysql -u root --password={{ db_root_password }} -e 'use slurm_acct_db'; then
#  mysql -u root --password={{ db_root_password }} -e "create database slurm_acct_db;"
#fi
