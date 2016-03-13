SOURCE_FOLDER="/root/project/quick"
UPLOAD_FOLDER="./upload"

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
print "Compress $SOURCE_FOLDER..."
rm -rf $UPLOAD_FOLDER
mkdir $UPLOAD_FOLDER

tar --exclude-vcs --exclude="$SOURCE_FOLDER/node_modules" --exclude="$SOURCE_FOLDER/public/lib" -zcvf $UPLOAD_FOLDER/backup-src.tar.gz $SOURCE_FOLDER

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
