<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/rearend.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Document</title>
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
                      <a href="logout.jsp">
					    <div class="logout" ><font color="white">管理者<br>登出</font>
                        </div>  
                      </a>
                  </div>
			        </div>


              <table border="1">
                <h3>會員訂單</h3>
                <tr class="title">
                    <td>訂單編號</td>
                    <td>訂購商品(商品*數量)</td>
                    <td>總價</td>
                    <td>運送方式</td>
                    <td></td>
                </tr>


                <tr>
                    <td> TS6482158</td>
                    <td>SPRINT 150(白)*1 <br>
                        LX 125 (黑)*1</td>
                    <td>$ 292,900</td>
                    <td>到店取貨</td>
                    <td><input type="submit" value="修改"></td>
                </tr>

                <tr>
                    <td>TS1548962</td>
                    <td>SPRINT S WITH TFT 150 (綠)*1</td>
                    <td>$ 185,000</td>
                    <td>到店取貨</td>
                    <td><input type="submit" value="修改"></td>
                </tr>

              </table>
              <br>
              <br>
              <hr>
              <table  border=1>
                <h3>商品</h3>
				
              <form method="post" action="revise.jsp"  >
              產品編號:<input required type="text"  name="pid" >
				<input type="submit" value="修改資料"  ><br>
            </form>
              <br>
			  
			  <form method="post" action="deleteproduct.jsp"  >
              產品編號:<input required type="text" name="IDproduct"  >
				<input type="submit"  value="刪除資料"  ><br>
            </form>
			  
			  
			<a href="increaseproduct.jsp">新增產品</a><br>
 
			  
			  
                    <tr class="title">
                        <td>產品編號</td>
                        <td>產品名稱</td>
                        <td>顏色</td>
                        <td>價錢</td>
                        <td>庫存</td>
                        <td></td>
                    </tr>
              <%
              sql="select * from product";
              ResultSet rs2=con.createStatement().executeQuery(sql);
              sql="SELECT * FROM  product ORDER BY IDproduct DESC LIMIT ";//LIMIT是限制傳回筆數
              //上述語法解讀如下:
              // current_page... select * from stocks order by pid desc limit
              String IDproduct="0";
              while(rs2.next()){
              %>
              <tr>
                <td><%=rs2.getString(1)%></td>
                <td><%=rs2.getString(2)%></td>
                <td><%=rs2.getString(3)%></td>
                <td><%=rs2.getString(4)%></td>
				<td><%=rs2.getString(5)%></td>
              </tr>
              <%}%>


              </table>




    
      </nav>
    <footer class="footer">Copyright © since 2022 Vespa All Rights Reserved.
    </footer>
</body>
</html>