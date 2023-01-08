
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
if(session.getAttribute("id") != null ){
    sql = "SELECT * FROM `members` WHERE `id`='" +session.getAttribute("id")+"';"; 
	ResultSet rs =con.createStatement().executeQuery(sql);
	String id="";

	while(rs.next()){
	    id=rs.getString("id");
		
	}
    con.close();
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>留言版</title>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/members.css">
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

                
    
              <div class="search">
                  <form class="search_content" action="action_page.php">
                      <input type="text" placeholder="Search.." name="search">
                      <button type="submit"><i class="fa fa-search"></i></button>
                  </form>
              </div>
			  
			  
              <div class="icon-bar">
                  <div class="icon_member">
                      <a href="logout.jsp">
					    <div class="logout">Hi，<%=id%><br>登出
                        </div>  
                      </a>
                  </div>
				  
    
                  <div class="icon_cart">
                      <a href="shoppingcar.html">
                          <img src="photo/shopping_cart_1.png" width="68px" alt="購物車">
                      </a>
                  </div>
              </div>
      </nav>
      
      <main>
        <article>
            <section  class="revise">
                <form action="add2.jsp" method="POST">
                    <h2>── 留言板 ──</h2>					<a href="view.jsp?page=1">觀看留言</a><p>
                    
                        <table class="revise_content">
                            <form name="form1" >

                            <tr>
                                <td class="left">姓名 :<input type="text" name="name"></td>
                            </tr>

                            <tr>
                                <td class="left">郵件：<input type="text" name="mail"></td>
                            </tr>

                            <tr>
                                <td class="left">主題：<input type="text" name="subject"></td>
                            </tr>

                            <tr>
                                <td class="left">內容：<textarea rows=5 name="content"></textarea></td>
                            </tr>
                        </form>

                        </table>
                       
                        <div class="button">
                            <a href="">
                                <input type="Reset" name="Reset" value="重新填寫" class="btn2">
                            </a>
                        </div>
                        <div class="boardbutton">
                            <a href="">
                                <p><input type="submit" name="Submit" value="送出" class="btn1" ></p>
                            </a>
                        </div>


                </form>  
            </section>

<div class="wrapper">
</div>
<footer class="footer">Copyright © since 2022 Vespa All Rights Reserved.
</footer>
    <%
}
else{
	con.close();
%>
<h1>您尚未登入，請登入！</h1>
<a href="member.html">登入</a>
<%
}
%>
    
</body>
</html>
