#/bin/bash


# 21.05.2015
# This script monitors the files on a specific path (leave on default to monitor the whohle space):
path=.

# Define a admin adress:
mailto=your_adress

# set a unique hostname to identify your space:
hostname=bla.foo.com

# Find all modified directories from within the last 24 hours:
mod_dirs=`find $path -type d -mtime -1`

# Find all modified files from within the last 24 hours:
mod_files=`find $path -type f -mtime -1`

# Find all changed files from withing the last 24 hours:
changed_files=`find $path -type f -ctime -1`

# Find all changed directories from within the last 24 hours:
changed_dirs=`find $path -type d -ctime -1`

echo "The following files were modified (rights) in the last 24 hours:
$mod_files

The following files were modified (rights) in the last 24 hours:
$mod_dirs

The following files were changed or created in the last 24 hours:
$changed_files

The following directories were changed or created in the last 24 hours:
$changed_dirs" | mail -s "Modified and changed files of $hostname" $mailto
