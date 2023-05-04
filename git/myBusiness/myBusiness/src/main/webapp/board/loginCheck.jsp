<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	String id = (String)session.getAttribute("idKey");
	String url;
%>

<%
	if( id != null ){
		url = "post.jsp";
	} else {
		url = "../member/login.jsp";
	}
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<script>
		location.href="<%=url%>";
	</script>
</body>
</html>