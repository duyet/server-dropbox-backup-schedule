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
