<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>列出所有留言</title>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
</head>
<body>
        <header>
            <a href="index.jsp">
              <img src="photo/logo.jpg"></a>
          </header>
          <nav>
          
              <ul>
                <p>逐風</p>
              </ul>
                <div class="down">
                    <a href="aboutus.html">關於我們</a>
                </div>
                
                <div class="down1">
                      <button class="dropbtn">商品瀏覽</button>
                      <div class="dropdown-content">
                          <a href="product.html">所有商品</a>
                          <a href="lx.jsp">LX</a>
                          <a href="Primavera.jsp">PRIMAVERA</a>
                          <a href="Sprint.jsp">SPRINT</a>
                          <a href="gts.jsp">GTS</a>
                      </div>
                  </div>
        
                  <div class="down2">
                      <a href="members.jsp" class="dropbtn">會員中心</a>
                      <div class="dropdown-content">
                        <a href="members.jsp">修改會員資料</a>
                        <a href="#order">訂單紀錄</a>
                        <a href="#comment">評論</a>
                    </div>
                  </div>
    
                    <div class="down3">
                        <a href="board.jsp" class="dropbtn">留言板</a>
                        <div class="dropdown-content">
                            <a href="board.jsp">填寫留言</a>
                            <a href="view.jsp">留言紀錄</a>
                          </div>
                    </div>
                  </div>
        
                  <div class="search">
                      <form class="search_content" action="action_page.php">
                          <input type="text" placeholder="Search.." name="search">
                          <button type="submit"><i class="fa fa-search"></i></button>
                      </form>
                  </div>
				  
				 
          </nav>
          
    <p><a href="board.jsp">寫留言</a></p>
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
           sql="USE `final`";
           con.createStatement().execute(sql);
//Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
           sql="SELECT * FROM `guestbook`"; //算出共幾筆留言
           ResultSet rs=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY).executeQuery(sql);
           //ResultSet.TYPE_SCROLL_INSENSITIVE表紀錄指標可前後移動，ResultSet.CONCUR_READ_ONLY表唯讀
           //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
           rs.last();
           int total_content=rs.getRow();
           out.println("共"+total_content+"筆留言<p>");
           
           //每頁顯示5筆, 算出共幾頁
           int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
           out.println("請選擇頁數");
           //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
           for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
			   out.print("<a href='view.jsp?page="+i+"'>"+i+"</a>&nbsp;"); //&nbsp;html的空白



           out.println("<p>");

           //讀取page變數
           String page_string = request.getParameter("page");
           if (page_string == null) 
               page_string = "0";          
           int current_page=Integer.valueOf(page_string);
           if(current_page==0) //若未指定page, 令current_page為1
	          current_page=1;
	       //計算開始記錄位置   
		   out.println("共"+page_num+"頁，目前在第"+current_page+"頁<p>");
		   		if(current_page>1)
				     out.print("<a href='view.jsp?page=1'>第一頁</a>&nbsp;");
				 if(current_page>1)
				     out.print("<a href='view.jsp?page="+(current_page-1)+"'>上一頁</a>&nbsp;");
				 if(current_page<page_num)
					  out.print("<a href='view.jsp?page="+(current_page+1)+"'>下一頁</a>&nbsp;");
				      out.print("<a href='view.jsp?page="+page_num+"'>最後一頁</a>&nbsp;");
					  out.println("<br>");

				     

		   //out.println("<form name='f' action='view.jsp' method='get'>跳至<input type='text' size='3‘ name='page' value=1>頁<input type='submit' value='送出'>");              
		   //out.println("<hr>");

//Step 5: 顯示結果 
           int start_record=(current_page-1)*5;
           //遞減排序, 讓最新的資料排在最前面
           sql="SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT ";
           sql+=start_record+",5";

// current_page... SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT
//      current_page=1: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 0, 5
//      current_page=2: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 5, 5
//      current_page=3: SELECT * FROM `guestbook` ORDER BY `GBNO` DESC LIMIT 10, 5
           rs=con.createStatement().executeQuery(sql);
//  逐筆顯示, 直到沒有資料(最多還是5筆)
           while(rs.next())
                {
                 out.println("留言主題:"+rs.getString(4)+"<br>");
                 out.println("訪客姓名:"+rs.getString(2)+"<br>");
                 out.println("E-mail:"+rs.getString(3)+"<br>");
                 out.println("留言內容:"+rs.getString(5)+"<br>");
                 out.println("留言時間:"+rs.getString(6)+"<br><hr>");
          }
//Step 6: 關閉連線
          con.close();
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

    <div class="wrapper">
    </div>
    <footer class="footer">Copyright © since 2022 Vespa All Rights Reserved.
    </footer>

</body>
</html>
