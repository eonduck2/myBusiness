<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="member.MemberBean"%>

<jsp:useBean id="mMgr" class="member.MemberMgr"/>

<jsp:useBean id = "mCheck" class = "member.MemberMgr"/>
<%
	  request.setCharacterEncoding("EUC-KR");
	  String id = request.getParameter("id");
	  String pwd = request.getParameter("pwd");
	  
	  String url = "login.jsp";
	  String msg = "�α��ο� ���� �Ͽ����ϴ�.";
	  
	  boolean result = mMgr.loginMember(id,pwd);	// �Է¹��� ���� ���� ȸ�����Ե� ������ �� �� �α����� ����
	  
	  if(result){
	    session.setAttribute("idKey",id);
	    msg = "�α��ο� ���� �Ͽ����ϴ�.";
	    String id2 = (String)session.getAttribute("idKey");
	   	  MemberBean asd = mCheck.getMember(id2);
	   	  
	   	  String name = asd.getName();
	   	  
	   	  session.setAttribute("nameKey", name);
	  	  }
	
	 
%>


<script>
	alert("<%=msg%>");	
	location.href="<%=url%>";
</script>