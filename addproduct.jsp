
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	try{
		String url="jdbc:mysql://localhost/";
	Connection con=DriverManager.getConnection(url,"root","1234");
	
	String sql="use final";
	con.createStatement().execute(sql);
	String IDproduct=request.getParameter("IDproduct");
	String NameProduct=request.getParameter("NameProduct");
	String Color=request.getParameter("Color");
	String Price=request.getParameter("Price");
	String Left=request.getParameter("Left");
	

		sql="insert product(`IDproduct`,`NameProduct`,`Color`,`Price`,`Left`) values('"+IDproduct+"','"+NameProduct+"','"+Color+"','"+Price+"','"+Left+"')";
		con.createStatement().execute(sql);
        con.close();
        response.sendRedirect("addproduct1.jsp");

	   
    }
	
	catch(SQLException sExec){
		out.println("SQL錯誤"+sExec.toString());
	}
	}
	catch (ClassNotFoundException err){
		out.println("class錯誤"+err.toString());
	}
	%>