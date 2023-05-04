<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="mMgr" class="member.MemberMgr"/>
<%
	  request.setCharacterEncoding("EUC-KR");
	  
	  String url = "login.jsp";
	  String msg;
	  
	  String id2 = (String) session.getAttribute("idKey"); 	// 이미 사용된 아이디 값을 불러오기를 위함
	  String pwdCheck = request.getParameter("pwdCheck"); // 개인정보 조회를 위해 비밀번호 재입력을 위함
	  
	  boolean result2 = mMgr.loginMember(id2,pwdCheck); // 자기정보 조회를 위한 본인 인증을 위함
	  
	  if(result2){
		  url = "memberCheck.jsp";
		  msg = "본인 인증 완료.";
	  }	else{
		  msg = "본인 인증 실패.";
	  }
	  
%>


<script>
	alert("<%=msg%>");	
	location.href="<%=url%>";
</script>