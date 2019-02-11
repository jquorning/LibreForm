#!/bin/sh

base_directory=.
temp_directory=$base_directory/var
dest_directory=$base_directory/source
template=setup.adb.template
destination=setup.adb
date_time_utc=$(date -u "+%Y-%m-%dT%H:%M:%S")
library_name=$(cat $temp_directory/LIBRARY_NAME)
library_version=$(cat $temp_directory/LIBRARY_VERSION)

uname_opt_m=$(uname -m)
uname_opt_n=$(uname -n)
uname_opt_p=$(uname -p)
uname_opt_r=$(uname -r)
uname_opt_s=$(uname -s)

##
##  Stream edit setup.adb.template into setup.adb
##
cat $temp_directory/$template                        | \
sed 's/@_DATE_TIME_UTC_@/'$date_time_utc'/'     | \
sed 's/@_LIBRARY_NAME_@/'$library_name'/'       | \
sed 's/@_LIBRARY_VERSION_@/'$library_version'/' | \
sed 's/@_UNAME_OPT_M_@/'$uname_opt_m'/'         | \
sed 's/@_UNAME_OPT_N_@/'$uname_opt_n'/'         | \
sed 's/@_UNAME_OPT_P_@/'$uname_opt_p'/'         | \
sed 's/@_UNAME_OPT_R_@/'$uname_opt_r'/'         | \
sed 's/@_UNAME_OPT_S_@/'$uname_opt_s'/'         | \
cat >$dest_directory/$destination


