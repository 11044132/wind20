
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%@page import="java.util.*"%> 


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>front page</title>
    <link rel="stylesheet" href="css/front_page.css">
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
                  </div>
				   <div class="icon-bar">
                  <div class="icon_member">
                      <a href="logout.jsp">
					    <div class="logout"><font color="white">Hi，<%=id%><br>登出
                        </div>  
                      </a>
                  </div>
				  <div class="icon_cart">
                      <a href="shoppingcar.html">
                          <img src="photo/shopping_cart_1.png" width="68px" alt="購物車">
                      </a>
                  </div>
        
                  
         <%
}
else{

%>
<div class="icon-bar">
                      <div class="icon_member">
                          <a href="member.html">
                              <img src="photo/member.png" width="65px" alt="會員">
                          </a>
                      </div>
					  
<%
}
%>
                      
          </nav>
		     <body> 
   <%
   Random ran=new Random();
   int n=ran.nextInt(3)+1;
   //String url="";
   if(n == 1)
       url="http://www.flag.com.tw";
   if(n == 2)
       url="http://shopping.pchome.com.tw";
   if(n == 3)
       url="http://buy.yahoo.com.tw";
   %>
   <a href=<%out.print(url);%>><%out.println("<img src='AD"+n+".GIF'>");%></a>
   </body>
<main>
    <article>
        <section>
            <div class="slider">
                <a href="#"><img src="photo/photo.jpg"></a>
                <a href="#"><img src="photo/photo1.jpg"></a>
                <a href="#"><img src="photo/photo2.jpg"></a>
            </div>
        </section>
    
        <section class="hot">
            <hr><h2>💥 熱銷商品 | HOT!! 💥</h2><hr>
            <a href="Primavera.html"><img src="photo/top2_icon.png" class="img1"></a> 
            <img src="photo/top1_icon.png" class="img2">
            <img src="photo/top3_icon.png" class="img3">
            <div class="container1">
                <img src="photo/top2.jpg" class="image">
                <div class="middle">
                  <button class="btn1">
                    <h3>PRIMAVERA 150</h3> 
                    <p>$ 158,000</p> 
                </button>
                </div>
            </div>

            <div class="container2">
                <img src="photo/top1.jpg" class="image">
                <div class="middle">
                    <button class="btn2">
                        <h3>LX 125</h3>
                        <p>$ 121,900</p> 
                    </button>
                </div> 
            </div>

            <div class="container3">
                <img src="photo/top3.jpg" class="image">
                <div class="middle">
                    <button class="btn3">
                    <h3>SPRINT S WITH TFT 150</h3>
                    <p>$ 185,000</p> 
                    </button>
                </div> 
            </div>
        </section>

    </article>
</main>
<br>
<br>
<div class="wrapper">
  </div>
  <footer class="footer">Copyright © since 2022 Vespa All Rights Reserved.<br>
  
  		<%
     application.setAttribute("counter", "1");
    // out.print("計數器初始值設定為1000");
%>
	<%
  int counter;
  String strNo = (String)application.getAttribute("counter");//讀application變數
  counter = Integer.parseInt(strNo); //轉成整數
  if (session.isNew())
  counter++;                                        //計數器加1
  strNo = String.valueOf(counter);    //轉成字串
  application.setAttribute("counter", strNo);//寫application變數
%>
<font color="black"><style="vertical-align:top">您是第<%= counter %>位貴客！</font></h3>
  </footer>
</body>


</html>