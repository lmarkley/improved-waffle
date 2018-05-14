#/bin/bash -x

# sslpw()
# generate a password of length n
# arg1 is n
function sslpw() {
	openssl rand -base64 $1
}

# compdir()
# Compress directory with gzip and tar
# takes all args as the path of the directory to compress
function compdir () {
	tar -zcvf "$@".tar.gz "$@"
}

# dcdir()
# decompress tar.gz file
# $1 is the file path to decompress
# $2 is the location to decompress into
function dcdir () {
	tar -zxvf "$1" "$2"
}
