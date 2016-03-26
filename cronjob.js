var sys = require('sys')
var exec = require('child_process').exec;
var fs = require('fs');

var rootPath = __dirname;
var logPath = rootPath + '/logs/cronjob.log';

console.log("Started cronjob server.");
function puts(error, stdout, stderr) {
	// console.log('stdout: ' + stdout);
	console.log('stderr: ' + stderr);
	if (error !== null) console.log('exec error: ' + error);
}

var min 	= 1000 * 60;
var hour 	= 1000 * 60 * 60; 

var backupEvery = 1 * 3 * hour; // every 3 hours
var internalTransaction = setInterval(function() {
	run(rootPath + "/run.sh");
}, 10000);

var run = function(path) {
	var message = ("["+ new Date() +"]: Cronjob ", path);
	fs.appendFile(logPath, message + "\n", function (err) {});
	console.log(message);

	exec("LC_ALL=C.UTF-8 bash "+ path, puts);
}
