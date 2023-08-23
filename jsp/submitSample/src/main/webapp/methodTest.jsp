<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>methodTest</title>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script>
 $(document).ready(function() {
	 
	 $('#get').click(function() {
		 $.ajax({
			 url : 'http://localhost:8181/submitSample/RestServlet',
			 type : 'get',
			 dataType:'text',
			 data : {
				 id : $('#id').val(),
				 account : $('#account').val(),
				 price : $('#price').val(),
				 bigo : $('#bigo').val()
			 }, // data 
			 success : function(data) {
				 
				 // 서버 => 클라이언트
				 console.log("data : " + data);	
				 // alert(data);
				 
				 var json = JSON.parse(data)
				 alert("json data-1 : " + json.java);
				 alert("json data-2 : " + json["spring"]);
				 
				 document.getElementById("result").innerHTML = "<b>"+json.java+"</b>";
				 //
		 	} // success
		 }) // ajax
	 }) // get
	 
	 $('#post').click(function() {
		 $.ajax({
			 url : 'http://localhost:8181/submitSample/RestServlet',
			 type : 'post', 
			 dataType:'text',
			 data : {
				 id : $('#id').val(),
				 account : $('#account').val(),
				 price : $('#price').val(),
				 bigo : $('#bigo').val()
			 }, // data 
			 success : function(data) {
				 //
		 	} // success
		 }) // ajax
	 }) // post
	 
	 $('#put').click(function() {
		 $.ajax({
			 url : 'http://localhost:8181/submitSample/RestServlet',
			 type : 'put',
			 dataType:'text',
			 data : {
				 id : $('#id').val(),
				 account : $('#account').val(),
				 price : $('#price').val(),
				 bigo : $('#bigo').val()
			 }, // data 
			 success : function(data) {
				 //
		 	} // success
		 }) // ajax
	 }) // put
	 
	 $('#delete').click(function() {
		 $.ajax({
			 url : 'http://localhost:8181/submitSample/RestServlet',
			 type : 'delete',
			 dataType:'text',
			 data : {
				 id : $('#id').val(),
				 account : $('#account').val() //,
			//	 price : $('#price').val(),
			//	 bigo : $('#bigo').val()
			 }, // data 
			 success : function(data) {
				 //
		 	} // success
		 }) // ajax
	 }) // delete
	 
	 
	 $('#head').click(function() {
		 $.ajax({
			 url : 'http://localhost:8181/submitSample/RestServlet',
			 type : 'head',
			 dataType:'text',
			 data : {
				 id : $('#id').val(),
				 account : $('#account').val(),
				 price : $('#price').val(),
				 bigo : $('#bigo').val()
			 }, // data 
			 success : function(data) {
				 //
		 	} // success
		 }) // ajax
	 }) // head
	 
	 $('#options').click(function() {
		 $.ajax({
			 url : 'http://localhost:8181/submitSample/RestServlet',
			 type : 'options',
			 dataType:'text',
			 data : {
				 id : $('#id').val(),
				 account : $('#account').val(),
				 price : $('#price').val(),
				 bigo : $('#bigo').val()
			 }, // data 
			 success : function(data) {
				 //
		 	} // success
		 }) // ajax
	 }) // options
	 
 }) //
</script>
</head>
<body>
output : <div id="result"></div>
<hr>
id : <input type="text" id="id"><br>
account : <input type="text" id="account"><br>
price : <input type="text" id="price"><br>
bigo : <input type="text" id="bigo"><br><br>

<button id="get">GET</button>&nbsp;
<button id="put">PUT</button>&nbsp;
<button id="post">POST</button>&nbsp;
<button id="delete">DELETE</button>&nbsp;
<button id="head">HEAD</button>&nbsp;
<button id="options">Options</button>&nbsp;
<!-- <button id="trace">Trace</button> -->
 </body>
</html>