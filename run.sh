SOURCE_FOLDER="/root/project/quick"
UPLOAD_FOLDER="./upload/src"

REMOVE_IN_SOURCE="$UPLOAD_FOLDER/node_modules"

######################

function print
{
	echo "$1";
}


print ""
print ""
print "============================="
print "        SERVER BACKUP        "
print "============================="

print ""
print ">> Copy source ..."
print "Copy $SOURCE_FOLDER to $UPLOAD_FOLDER..."
rm -rf $UPLOAD_FOLDER
mkdir $UPLOAD_FOLDER
cp $SOURCE_FOLDER/* $UPLOAD_FOLDER -R
rm -rf $REMOVE_IN_SOURCE
print "OK"

print ""
print ">> Dump mongodb ..."
./mongo.sh
print "OK"

#######################

print ""
print "============="
print ">> Start Upload ..."

print ""
./dropbox_uploader.sh upload upload/* /
