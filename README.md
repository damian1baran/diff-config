# shell_script_diff_config

##### Feel free to use this script however you like.
##### License is: CC0 1.0


##### More info about license you can find at:
http://creativecommons.org/publicdomain/zero/1.0/

## Description
* This shell script was written to use md5 and diff tool/utility to check if two
specified files whose paths are supplied to this script via two script arguments
arg1 and arg2 are same.

* In case argument count is incorrect for this script or one or more arguments doesn't
represent vaild path to the file or either one or both files doesn't exist at all
script will return 1.

* If no error occoured (both files supplied via arg1 and arg2 exists) and md5 digest
is not same (differ) they are compared by diff utility
and output is provided to STDOUT and return 10.

## Input arguments description
> [golden-config] is the original file or "golden configuration" file.
> [current-config] is actual file or "current configuration" file (with latest modifications).

Usage:
> sh diff_config.sh [golden-config] [current-config]

Return Codes:
0  - both files are same (string to STDOUT is: echo "[EXIT_SUCCESS] Exiting with *SUCCESS*")
1  - error occurred (string to STDOUT is: echo $specific_error && echo $usage)
      - argument count incorrect
      - one or both files doesn't exists
      - you supplied incorrect paths to files as script arguments
10 - golden file differ from curren config file (stirng to STOUD is: diff -dU0 $1 $2)
