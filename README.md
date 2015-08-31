# shell_script_diff_config

Feel free to use this script however you like.
##### License is: CC0 1.0

More info about license you can find at:
http://creativecommons.org/publicdomain/zero/1.0/
 
 
##### Description
* This shell script was written to use md5 and diff tool/utility to check if two
specified files whose paths are supplied to this script via two script arguments
arg1 and arg2 are same.

* In case ((argument count is incorrect for this script) or (one or more arguments
doesn't represent vaild path to file) or ((either one or both files) doesn't exist at all))
script will return 1.

* If no error occoured and md5 digest is not same files are compared by diff utility and
output of diff is "echoed" to STDOUT and script returns 10.
 
 
##### Input arguments description:
[golden-config] is the original file or "golden configuration" file.
[current-config] is actual file or "current configuration" file (with latest modifications).
 
 
##### Usage
> sh diff_config.sh [golden-config] [current-config]
 
 
##### Return Codes
###### 0 - both files are same - string to STDOUT is:
```
echo "[DONE] Golden Config is *SAME AS* Current Config"
```

###### 1 - error occurred - string to STDOUT is:
```
echo $specific_error && echo $usage
```
* argument count is incorrect
* one or both files doesn't exists
* user supplied incorrect paths to files as script arguments

###### 10 - golden file differ from curren config file - stirng to STDOUT is:
```
"[DONE] Golden Config *DIFFER FROM* Current Config" && echo && diff -dU0 $1 $2
```
``
``
##### Example ```if [ $? -eq 10]```
[DONE] Golden Config \*DIFFER FROM\* Current Config

--- /some-path/some-golden-config-file.cfg	2015-07-01 13:22:58.000000000 +0200
+++ /some-other-path/some-current-config-file.cfg	2015-07-07 14:31:19.000000000 +0200
@@ -1 +1 @@
-unset fee protection enable
+unset key protection enable

