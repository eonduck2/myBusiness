<%@page contentType="application; charset=EUC-KR"%>
<jsp:useBean id="bMgr" class="board.BoardMgr" />
<%
	  bMgr.downLoad(request, response, out, pageContext);
%>