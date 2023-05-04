<%@ page import="member.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>

<jsp:useBean id = "mCheck" class = "member.MemberMgr"/>

<%
	String id = (String)session.getAttribute("idKey");
	MemberBean asd = mCheck.getMember(id);
	String jobName = mCheck.getJobName(asd.getJobcode());
%>

<%
	String gen;
	if( asd.getGender().equals( "1" ))
		gen = "남성";
	else gen = "여성";
%>

<%
String hobby[] = asd.getHobby();
String lists[] = { "인터넷", "여행", "게임", "영화", "운동" };
String hobbyOut = "";
for( int i = 0; i < hobby.length; i++ ){
	if( hobby[ i ].equals( "1" ))
		hobbyOut += "/" + lists[ i ];
}

hobbyOut = hobbyOut.replaceFirst("/", " ");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<table width = "400" border = "1" align = "center" bgcolor = "#ffff99">
	
		<tr bordercolor = "#ffff66">
		
			<td colspan = "2" align = "center">
				<b>회원 정보</b>
			</td>
			
		</tr>
		
			<td align = "LEFT">
				<br>
				ID = <b><%= asd.getId() %></b><br><br>
				PWD = <b><%= asd.getPwd() %></b><br><br>
				NAME = <b><%= asd.getName() %></b><br><br>
				GENDER = <b><%= gen %></b><br><br>
				EMAIL = <b><%= asd.getEmail() %></b><br><br>
				BIRTHDAY = <b><%= asd.getBirthday() %></b><br><br>
				ZIPCODE = <b><%= asd.getZipcode() %></b><br><br>
				ADDRESS = <b><%= asd.getAddress() %></b><br><br>
				HOBBY = <b><%= hobbyOut %></b><br><br>
				NAT = <b><%= asd.getNat() %></b><br><br>
				JOB = <b><%= jobName %></b><br><br>
				
			</td>
			
	</table>
	<br><br>
	<div>
		<div align="center">
			<a href="login.jsp">마이 페이지</a>
		</div>
	</div>
</body>
</html>