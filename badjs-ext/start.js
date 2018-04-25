

var process = require("child_process");
var path = require("path");

// var args = ["--debug", "--project"]
var args = ["--debug"]


console.log("========  badjs-acceptor ===========")
process.fork(path.join(__dirname, "badjs-ivweb", "badjs-acceptor", "app.js"), args)

setTimeout(function () {
    console.log("========== badjs-mq =========")
    process.fork(path.join(__dirname, "badjs-ivweb",  "badjs-mq", "app.js"), args)

}, 10000)

setTimeout(function () {
    console.log("========= badjs-storage ==========")
    process.fork(path.join(__dirname,  "badjs-ivweb", "badjs-storage", "app.js"), args)

}, 10000)

setTimeout(function () {

    console.log("========== badjs-web =========")
    process.fork(path.join(__dirname,  "badjs-ivweb", "badjs-web", "app.js"), args)

}, 30000)



setTimeout(function () {

    console.log("========== cront =========")
    process.exec('/usr/sbin/crond')

}, 35000)



