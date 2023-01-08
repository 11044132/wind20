<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
  <head>
    <title>刪除產品</title>
  </head>
  <body>
    <%
    try {
    //Step 1: 載入資料庫驅動程式
    Class.forName("com.mysql.jdbc.Driver");
    try {
    //Step 2: 建立連線
    String url="jdbc:mysql://localhost/?serverTimezone=UTC";
    String sql="final";
    Connection con=DriverManager.getConnection(url,"root","1234");
    if(con.isClosed())
    out.println("連線建立失敗");
    else {
    //Step 3: 選擇資料庫
    sql="use final";
    con.createStatement().execute(sql);
    
    String IDproduct = request.getParameter("IDproduct");
    
    sql = "DELETE FROM `product` WHERE IDproduct='"+IDproduct+"'";
    //out.println(sql);
    con.createStatement().execute(sql);
    //Step 6: 關閉連線
    con.close();
    //Step 5: 顯示結果
    //直接顯示最新的資料
    response.sendRedirect("deleteproduct1.jsp");
    } 

    }
    catch (SQLException sExec) {
    out.println("SQL錯誤"+sExec.toString());
    }
    }
    catch (ClassNotFoundException err) {
    out.println("class錯誤"+err.toString());
    }
    %>
  </body>
</html>