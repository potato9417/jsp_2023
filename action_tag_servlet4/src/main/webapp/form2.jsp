<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>form</title>
</head>
<body>

	<form method="post" action="action1.jsp">
	
		<label for="id">
			아이디 : <input type="text" id="id" name="memberId" />
		</label><br />
		
		<label for="name">
			이름 : <input type="text" id="name" name="memberName" />
		</label><br />
		
		<label for="address">
			주소 : <input type="text" id="address" name="memberAddress" />
		</label><br />
		
		취미 :<br> 
		<input type="checkbox" name="memberHobbies" value="야구"> 야구<br>	
		<input type="checkbox" name="memberHobbies" value="축구"> 축구<br>
		<input type="checkbox" name="memberHobbies" value="배구"> 배구<br>
		<input type="checkbox" name="memberHobbies" value="농구"> 농구<br>
		
		<input type="submit" value="전송" />
		
	</form>

</body>
</html>