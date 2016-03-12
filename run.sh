SOURCE_FOLDER="/root/project/quick"
UPLOAD_FOLDER="./upload"

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
cp "$SOURCE_FOLDER/*" "$UPLOAD_FOLDER/src" -R
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
