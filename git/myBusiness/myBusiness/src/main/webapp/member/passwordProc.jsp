<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="mMgr" class="member.MemberMgr"/>
<%
	  request.setCharacterEncoding("EUC-KR");
	  
	  String url = "login.jsp";
	  String msg;
	  
	  String id2 = (String) session.getAttribute("idKey"); 	// �̹� ���� ���̵� ���� �ҷ����⸦ ����
	  String pwdCheck = request.getParameter("pwdCheck"); // �������� ��ȸ�� ���� ��й�ȣ ���Է��� ����
	  
	  boolean result2 = mMgr.loginMember(id2,pwdCheck); // �ڱ����� ��ȸ�� ���� ���� ������ ����
	  
	  if(result2){
		  url = "memberCheck.jsp";
		  msg = "���� ���� �Ϸ�.";
	  }	else{
		  msg = "���� ���� ����.";
	  }
	  
%>


<script>
	alert("<%=msg%>");	
	location.href="<%=url%>";
</script>