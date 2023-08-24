<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>form</title>
</head>
<body>

	<form method="post" action="action.jsp">
	
		<label for="id">
			아이디 : <input type="text" id="id" name="id" />
		</label><br />
		
		<label for="name">
			이름 : <input type="text" id="name" name="name" />
		</label><br />
		
		<label for="address">
			주소 : <input type="text" id="address" name="address" />
		</label><br />
		
		취미 :<br> 
		<input type="checkbox" name="hobbies" value="야구"> 야구<br>	
		<input type="checkbox" name="hobbies" value="축구"> 축구<br>
		<input type="checkbox" name="hobbies" value="배구"> 배구<br>
		<input type="checkbox" name="hobbies" value="농구"> 농구<br>
		
		<input type="submit" value="전송" />
		
	</form>

</body>
</html>