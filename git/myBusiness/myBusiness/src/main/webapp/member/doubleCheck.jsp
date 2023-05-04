<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
<div align="center"><br/><br/>
	<form name="loginFrm" method="post" action="passwordProc.jsp">
			<table>
				<tr>
					<td align="center" colspan="2"><h4>비밀번호 확인 후 조회됩니다.</h4></td>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pwdCheck"></td>
				</tr>
				
				<tr>
					<td colspan="2">
						<div align = "center">
							<input type = "submit" name = "sbmt" value = " 확인 ">
						</div>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>