<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>8-1</title>
</head>
<body>
	<h3>1.자바빈과 useBean태그</h3>
	
	<h4>회원가입</h4>
	<form action="./8-2.jsp" method="post">
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<label><input type="radio" name="gender" value="1" />남</label>
					<label><input type="radio" name="gender" value="2" />여</label>
				</td>
			</tr>
			<tr>
				<td>취미</td>
				<td>
					<label><input type="checkbox" name="hobby" value="등산" />등산</label>
					<label><input type="checkbox" name="hobby" value="여행" />여행</label>
					<label><input type="checkbox" name="hobby" value="독서" />독서</label>
					<label><input type="checkbox" name="hobby" value="운동" />운동</label>
					<label><input type="checkbox" name="hobby" value="게임" />게임</label>
				</td>
			</tr>
			<tr>
				<td>지역</td>
				<td>
					<select name="addr">
						<option>서울</option>
						<option>대전</option>
						<option>대구</option>
						<option>부산</option>
						<option>광주</option>					
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="left">
					<input type="submit" value="회원가입" />
				</td>
			</tr>
		</table>
	</form>
	
	

</body>
</html>