<!-- Step 0: import library -->

<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>


<html>
  <head>
    <title>修改產品</title>
  </head>
  <body>
    <%
    try
    {
        request.setCharacterEncoding("utf-8");
        String IDproduct = request.getParameter("IDproduct");
        String NameProduct = request.getParameter("NameProduct");
        String Color = request.getParameter("Color");
        String Price = request.getParameter("Price");
        String Left = request.getParameter("Left");



        sql = "UPDATE product SET `NameProduct`='"+NameProduct+"',`Color`='"+Color+"',`Price`='"+Price+"',`Left`='"+Left+"'WHERE `IDproduct`='"+IDproduct+"'";
        con.createStatement().executeUpdate(sql);
        con.close();
        response.sendRedirect("updateproduct1.jsp");
    }
    catch (SQLException sExec) 
    {
        out.println("SQL錯誤"+sExec.toString());
    }
    %>

	  

  </body>
</html>