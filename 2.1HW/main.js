var http = require("http");

const PORT = 8080;
var name = "you are looking at Rian's HW for core lab class";
var result = name.bold();
function handleRequest( request,response){
	response.end("it works! Path hit:"+request.url);
}

var server = http.createServer(handleRequest);

server.listen(PORT, function(){
	console.log("server listenin on: http://localhost:%s",PORT);
	console.log(name);
});