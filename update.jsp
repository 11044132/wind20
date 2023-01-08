<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("id") != null ){
    if(request.getParameter("id")!=null){
    sql = "UPDATE `members` SET `id`='"+request.getParameter("id")+"', `pwd`='"+request.getParameter("pwd")+"' , `name`='"+request.getParameter("name")+"', `tel`='"+request.getParameter("tel")+"', `add`='"+request.getParameter("add")+"' , `email`='"+request.getParameter("email")+"' WHERE `id`='"+session.getAttribute("id")+"'";

	con.createStatement().execute(sql);	
	con.close();
	out.print("更新成功!! 請<a href='index.jsp'>按此</a>回首頁!!");
	}
	else{
	  con.close();	
	  out.print("更新失敗!! 請填寫完整，<a href='members.jsp'>按此</a>回會員頁面!!");
	}
}
else{
	con.close();
%>
<h1>您尚未登入，請登入！</h1>
<a href="member.html">登入</a>
<%
}
%>
