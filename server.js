var express = require('express');
var serveStatic = require('serve-static');

var app = express();

var port = process.env.PORT || 8080;

// Serve up content from public directory
app.use(serveStatic(__dirname + '/app'));

app.listen(port);
