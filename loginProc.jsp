<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page import="member.MemberBean"%>

<jsp:useBean id="mMgr" class="member.MemberMgr"/>

<jsp:useBean id = "mCheck" class = "member.MemberMgr"/>
<%
	  request.setCharacterEncoding("EUC-KR");
	  String id = request.getParameter("id");
	  String pwd = request.getParameter("pwd");
	  
	  String url = "login.jsp";
	  String msg = "로그인에 실패 하였습니다.";
	  
	  boolean result = mMgr.loginMember(id,pwd);	// 입력받은 값을 통해 회원가입된 정보와 비교 후 로그인을 위함
	  
	  if(result){
	    session.setAttribute("idKey",id);
	    msg = "로그인에 성공 하였습니다.";
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