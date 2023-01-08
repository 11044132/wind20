<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>add</title>
</head>
<body>


<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use final";
           con.createStatement().execute(sql);
		   request.setCharacterEncoding("UTF-8");
		   String id=request.getParameter("id");
		   String pwd=request.getParameter("pwd");
		   String new_name=request.getParameter("name");
		   String tel=request.getParameter("tel");
		   String new_address=request.getParameter("add");
           String new_mail=request.getParameter("email");

//Step 4: 執行 SQL 指令	
           sql="insert members (`id`,`pwd`,`name`,`tel`,`add`,`email`) ";
           sql+="values ('" + id + "', ";
		   sql+="'"+  pwd +"', ";
		   sql+="'" + new_name + "', "; 
		   sql+="'"+tel+"', ";  
           sql+="'"+new_address+"', "; 
           sql+="'"+new_mail+"')";

           con.createStatement().execute(sql);

//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
           response.sendRedirect("add1.jsp");
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
