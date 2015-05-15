#! /bin/sh

exit_0="[EXIT_SUCCESS] Exiting with *SUCCESS*"
exit_1="[EXIT_FAILURE] Exiting with *ERROR*"
match="[DONE] Golden Config is *SAME AS* Current Config"
mismatch="[DONE] Golden Config *DIFFER FROM* Current Config"
err1="[ERROR] TOO FEW ARGUMENTS!"
err2="[ERROR] TOO MANY ARGUMENTS!"
err3="[ERROR] FILE(S) WAS/WERE NOT FOUND!"
usg="[NOTE] USAGE: sh $0 [golden-config] [current-config]"
check="[NOTE] Please check path to file: "

###############################################################################
# 1. Check of Arguments
###############################################################################

# Argument count verification
if (( $# < 2 ))
then
    echo $err1 && echo $usg && echo
    echo $exit_1 && echo
    exit 1

elif (( $# > 2 ))
then
    echo $err2 && echo $usg && echo
    echo $exit_1 && echo
    exit 1
fi

# Check if both paths to files are valid and files exists
if [ ! -f $1 ] || [ ! -f $2 ]
then
    echo $err3
    echo $check $1 && echo $check $2 && echo $usg
    echo
    echo $exit_1 && echo
    exit 1
fi

exit 0
