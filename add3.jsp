<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
                    <a href="" class="dropbtn">留言板</a>
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
    
              <div class="icon-bar">
                  <div class="icon_member">
                      <a href="index.jsp">
                          <div class="logout"><br>登出
                        </div>
                      </a>
                  </div>
    
                  
              </div>
      </nav>
        <%
      String pid = request.getParameter("pid");
      sql = "SELECT * FROM product WHERE IDproduct='"+pid+"'";
      ResultSet rs = con.createStatement().executeQuery(sql);
      if(rs.next()){

      String IDproduct= rs.getString(1);
      String NameProduct= rs.getString(2);
      String Color= rs.getString(3);
      String Price= rs.getString(4);
      String Left= rs.getString(5);

    %>
    <main>
        <article>
            <section class="revise">
                <form method="post" action="updateproduct.jsp">
                    <h2>── 📝修改資料 ──</h2>
                        <table class="revise_content">

                            <tr>
                                <td class="left">產品編號 : <input type="text" class="data" name="IDproduct" value="<%=IDproduct%>"/></td>
                                <td>產品名稱 : <input type="text" class="data" name="NameProduct" value="<%=NameProduct%>" /></td>
                            </tr>

                            <tr>
                                <td class="left">顏色 : <input type="text" class="data" name="Color" value="<%=Color%>" /></td>
                                <td>價錢 : <input type="text" class="data" name="Price" value="<%=Price%>" /></td>
                            </tr>

                            <tr>
                                <td class="left">庫存 : <input type="text" class="data" name="Left" value="<%=Left%>" /></td>
                            </tr>
                        </table>
                       
                        <div class="button">
                            <a href="">
                                    <input type="submit" value="確認修改" class="btn1"> 
                            </a>
                        </div>


                </form>  
            </section>
    <%}%>
        </article>






    </main>
    <div class="wrapper">
    </div>
    <footer class="footer">Copyright © since 2022 Vespa All Rights Reserved.
    </footer>
</body>
</html>
