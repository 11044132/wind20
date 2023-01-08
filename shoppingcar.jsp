<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="use final";
con.createStatement().execute(sql);
%>
<%
request.setCharacterEncoding("UTF-8");
request.getSession(true);
int left;
String leftString;
sql="select * from `order`";
ResultSet rs=con.createStatement().executeQuery(sql);


%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>購物車</title>
  <link rel="stylesheet" type="text/css" href="css/shoppingcar.css">
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
                    <a href="">填寫留言</a>
                    <a href="">留言紀錄</a>
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

<div class="box"><a href="#">TOP</a></div>
  <div class="title">購物車</div>
  <hr>
  <%
 while(rs.next()){%>
  <div class="container">
      <div class="row">
        <div class="col-sm-6" style="margin:0px auto;">
          <img class="img" src="photo<%=rs.getString(6)%>.jpg">
        </div>
        
            <form class="form">
                <div class="content">
                  <h5>商品名稱:<%=rs.getString(2)%></h5>
                  <h5>價錢:NT$ <%=rs.getString(4)%></h5>
				  <h5>庫存: <%=rs.getString(5)%></h5>
                  <div class="input">
                    <div class="wrapper">
                        <span class="minus">-</span>
                        <span class="num">01</span>
                        <span class="plus">+</span>
                    </div><br>
                    
                    <button class="button" action="product_delete.jsp">從購物車中刪除</button>
                  </div>
                </div>
            </form>
          </div>
	
      <hr>
<%

leftString = rs.getString(5);
left = Integer.parseInt(leftString);
if( left == 0){
out.println("<b>無庫存</b>");}
%>
      <!--<div class="row">
        <div class="col-sm-6" style="margin:0px auto;">
          <img class="img" src="photo/gts-ash.jpg">
        </div>
        
        
            <form class="form">
                <div class="content">
                  <h5>GTS 300 Super Sport Euro 5</h5>
                  <h5>NT$ 305,000</h5>
                  <h5>購買數量：1</h5>
                  <h5>單項商品總價：NT$ 305,000</h5>
                  <div class="input">
                    <div class="wrapper">
                        <span class="minus">-</span>
                        <span class="num">01</span>
                        <span class="plus">+</span>
                    </div><br>
                    <button class="button">從購物車中刪除</button>
                  </div>
              </div>
            </form>
        </div>-->
    </div>
    <% }
 %>
  
    

    <div class="text-center">
      <a href="buy.html"><button class="btn3">確認訂單</button> </a>
    </div>
  </div>

  <footer class="footer">Copyright © since 2022 Vespa All Rights Reserved.</footer>
  <script>

    const plus=document.querySelector(".plus"),
    minus=document.querySelector(".minus"),
    num=document.querySelector(".num");

    let a =1;

    plus.addEventListener("click",()=>{
        a++;
        a=(a<10)?"0"+a:a;
        num.innerText=a;
        console.log("a");
    });

    minus.addEventListener("click",()=>{
        if(a>1){
            a--;
            a=(a<10)?"0"+a:a;
        num.innerText=a;


        }
    });

</script>

 

</html>