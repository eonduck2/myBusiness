<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	  request.setCharacterEncoding("EUC-KR");
	  String id = (String)session.getAttribute("idKey");
	  String name = ( String )session.getAttribute("nameKey");
%>
<html>
<head>
<title>�α���</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function loginCheck() {
		if (document.loginFrm.id.value == "") {
			alert("���̵� �Է��� �ּ���.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pwd.value == "") {
			alert("��й�ȣ�� �Է��� �ּ���.");
			document.loginFrm.pwd.focus();
			return;
		}
		document.loginFrm.submit();
	}
</script>
</head>
<body bgcolor="#ffffcc">
<div align="center"><br/><br/>
		<%if (id != null) {%>
		<b><%=name%></b>�� ȯ�� �մϴ�.
		<p>���ѵ� ����� ��� �� ���� �ֽ��ϴ�.<p/>
			<a href="doubleCheck.jsp">ȸ�� ���� ��ȸ</a>
			|
			<a href="logout.jsp">�α׾ƿ�</a><br><br>
			<a href="../board/list.jsp">�Խ��� �̿��ϱ�</a>
			<%} else {%>
		<form name="loginFrm" method="post" action="loginProc.jsp">
			<table>
				<tr>
					<td align="center" colspan="2"><h4>�α���</h4></td>
				</tr>
				<tr>
					<td>�� �� ��</td>
					<td><input name="id"></td>
				</tr>
				<tr>
					<td>��й�ȣ</td>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<td colspan="2">
						<div align="right">
							<input type="button" value="�α���" onclick="loginCheck()">&nbsp;
							<input type="button" value="ȸ������" onClick="javascript:location.href='member.jsp'"><br><br>
						</div>
						
						<div align = "center">
						<a href="../board/list.jsp">�Խ��� �̿��ϱ�</a>
						</div>
					</td>
				</tr>
			</table>
		</form>
		<%}%>
	</div>
</body>
</html>