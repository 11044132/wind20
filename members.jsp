<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
if(session.getAttribute("id") != null ){
    sql = "SELECT * FROM `members` WHERE `id`='" +session.getAttribute("id")+"';"; 
	ResultSet rs =con.createStatement().executeQuery(sql);
	String id="", pwd="",name="",tel="",add="",email="";

	while(rs.next()){
	    id=rs.getString("id");
		pwd=rs.getString("pwd");
		name=rs.getString("name");
		tel=rs.getString("tel");
		add=rs.getString("add");
		email=rs.getString("email");
	}
    con.close();
%>
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
                      <a href="lx.html">LX</a>
                      <a href="Primavera.html">PRIMAVERA</a>
                      <a href="Sprint.html">SPRINT</a>
                      <a href="gts.html">GTS</a>
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
            <section class="revise">
                <form action="update.jsp" method="POST">
                    <h2>── 📝修改會員資料 ──</h2>
                        <table class="revise_content">

                            <tr>
                                <td class="left">姓名 : <input type="text" name="name" class="data" value="<%=name%>"/></td>
                                <td>帳號 : <input type="text" name="id" class="data" value="<%=id%>" /></td>
                            </tr>

                            <tr>
                                <td class="left">密碼 : <input type="password" name="pwd" class="data" value="<%=pwd%>" /></td>
                                <td>電話 : <input type="text" name="tel" class="data"  value="<%=tel%>" /></td>
                            </tr>

                            <tr>
                                <td class="left">地址 : <input type="text" name="add" class="data" value="<%=add%>" /></td>
                                <td>Email : <input type="text" name="email" class="data" value="<%=email%>" /></td>
                            </tr>
                        </table>
                       
                        <div class="button">

							   <input type="submit" value="確認修改" class="btn1" >

                            </a>
                        </div>


                </form>  
            </section>

            <section class="order">
                <h2 id="order">── 📋訂單紀錄 ──</h2>
                <p class="num1">訂單編號 : TS6482158</p>
                <table class="table1">
                         <tr>
                            <td class="title">訂購日期</td>
                            <td class="content">2022/11/5</td>
                        </tr>

                        <tr>
                            <td class="title">數量</td>
                            <td class="content">2</td>
                        </tr>

                        <tr>
                            <td class="title">商品內容</td>
                            <td class="content">1. SPRINT 150 | WHITE INNOCENZA - 雪地白 $ 171,000<br>
                            2. LX 125 | BLACK VULCANO - 火山黑 $ 121,900
                            </td>
                        </tr>

                        <tr>
                            <td class="title">總金額</td>
                            <td class="content">$ 292,900</td>
                        </tr>
                </table>

                <p class="num2">訂單編號 : TS1548962</p>
                <table class="table2">
                         <tr>
                            <td class="title">訂購日期</td>
                            <td class="content">2022/12/17</td>
                        </tr>

                        <tr>
                            <td class="title">數量</td>
                            <td class="content">1</td>
                        </tr>

                        <tr>
                            <td class="title">商品內容</td>
                            <td class="content">SPRINT S WITH TFT 150 | BRONZE ANTICO - 青銅棕 $ 185,000</td>
                        </tr>

                        <tr>
                            <td class="title">總金額</td>
                            <td class="content">$ 185,000</td>
                        </tr>
                </table>
                <img src="photo/order1.png" class="img1">
                <img src="photo/order2.png" class="img2">         
                <img src="photo/order3.png" class="img3">
            </section>

            <section class="comment">
                <h2 id="comment">── 🌟評論 ──</h2>
                    <div class="score">
                            <table class="score_table">
                                <tr>
                                    <th>日期</th>
                                    <th class="star">星等</th>
                                    <th class="product">產品名稱</th>
                                    <th >評論</th>
                                </tr>
                                <tr>
                                    <td>2022/11/11</td>
                                    <td>
                                        <div>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                        </div>
                                    </td>
                                    <td>1. SPRINT 150 | WHITE INNOCENZA - 雪地白<br>
                                        2. LX 125 | BLACK VULCANO - 火山黑 $ 121,900</td>
                                    <td>good!</td>
                                </tr>
                                <tr>
                                    <td>2022/12/25</td>  
                                    <td>                                    
                                        <div>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star"></span>
                                        </div>
                                    </td>
                                    <td>SPRINT S WITH TFT 150 | BRONZE ANTICO - 青銅棕</td>
                                    <td>good!</td>
                                </tr>
                            </table>
                    </div>
            </section>





        </article>






    </main>
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