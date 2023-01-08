<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(request.getParameter("id") !=null && !request.getParameter("id").equals("") 
	&& request.getParameter("pwd") != null && !request.getParameter("id").equals("")){


		sql = "SELECT * FROM `members` WHERE `id`=? AND `pwd`=?";
	 PreparedStatement pstmt =null;
	 pstmt= con.prepareStatement(sql);
	 pstmt.setString(1,request.getParameter("id"));
	 pstmt.setString(2,request.getParameter("pwd"));
		ResultSet rs =pstmt.executeQuery();
		
		
    if(request.getParameter("id").equals("our") && request.getParameter("pwd").equals("1234")){
		session.setAttribute("id",request.getParameter("pwd"));
		response.sendRedirect("rearend.jsp") ;
    }
	
    else if(rs.next()){            
        session.setAttribute("id",request.getParameter("id"));
		con.close();
        response.sendRedirect("index.jsp") ;
    }
    else{
		con.close();
        out.println("密碼帳號不符 !! <a href='member.html'>按此</a>重新登入") ;
	}
}
else
	response.sendRedirect("member.html");
%>
