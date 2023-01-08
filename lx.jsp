<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*, java.util.*"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/gts.css">
  <link rel="stylesheet" href="css/header.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <title>LX</title>
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
          </div>
  </nav>
     <!-- 商品照片 -->
     <div class="box"><a href="#">TOP</a></div>
     <div class="good">
      <div style="margin: 65px 3% 50px 5%;">
        <div class="goodslide">
          <div class="goodpic">
		  <% 
				sql="select * from lxone";
				PreparedStatement pstmt = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
				ResultSet rs=pstmt.executeQuery();
                          
                rs.last();
                int totalNo=rs.getRow();
							
				sql="select * from lxone";
				rs=con.createStatement().executeQuery(sql);
				for (int i=0; i<totalNo; i++){
					rs.next();
					out.print("<div class='"+rs.getString(2)+"'>");
					out.print("<div class='"+rs.getString(3)+"'>"+rs.getString(4)+"</div>");
					out.print("<img src='"+rs.getString(5)+"' ");
					out.print("style='"+rs.getString(6)+"'></div>");
					
				}	
							
				%>	
            <!--<div class="mySlides">
              <div class="numbertext">1 / 5</div>
              <img src="photo/lx-ash.jpg" style="width: 600px;">
            </div>

            <div class="mySlides">
              <div class="numbertext">2 / 5</div>
              <img src="photo/lx-black.jpg" style="width: 600px;">
            </div>

            <div class="mySlides">
              <div class="numbertext">3 / 5</div>
              <img src="photo/lx-green.jpg" style="width: 600px;">
            </div>

            <div class="mySlides">
                <div class="numbertext">4 / 5</div>
                <img src="photo/lx-red.jpg" style="width: 600px;">
              </div>
              <div class="mySlides">
                <div class="numbertext">5 / 5</div>
                <img src="photo/lx-white.jpg" style="width: 600px;">
              </div>-->
          </div>

          <a class="prev" onclick="plusSlides(-1)">❮</a>
          <a class="next" onclick="plusSlides(1)">❯</a>

          <div class="row" style="width: 600px;">
		  <% 
				sql="select * from lx";
				PreparedStatement pstmts = con.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY );
				ResultSet rss=pstmts.executeQuery();
                          
                rss.last();
                int totalNos=rss.getRow();
							
				sql="select * from lx";
				rss=con.createStatement().executeQuery(sql);
				for (int i=0; i<totalNos; i++){
					rss.next();
					out.print("<div class='"+rss.getString(2)+"'>");
					out.print("<img class='"+rss.getString(3)+"' ");
					out.print("src='"+rss.getString(4)+"' ");
					out.print("style='"+rss.getString(5)+"' ");
					out.print("onclick='"+rss.getString(6)+"'> </div>");	
				}	
							
				%>	
            <!--<div class="column">
              <img class="demo cursor" src="photo/lx-ash.jpg" style="width:100%" onclick="currentSlide(1)">
            </div>
            <div class="column">
              <img class="demo cursor" src="photo/lx-black.jpg" style="width:100%" onclick="currentSlide(2)">
            </div>
            <div class="column">
              <img class="demo cursor" src="photo/lx-green.jpg" style="width:100%" onclick="currentSlide(3)">
            </div>
            <div class="column">
                <img class="demo cursor" src="photo/lx-red.jpg" style="width:100%" onclick="currentSlide(4)">
              </div>
              <div class="column">
                <img class="demo cursor" src="photo/lx-white.jpg" style="width:100%" onclick="currentSlide(5)">
              </div>-->
          </div>
        </div>
      </div>
      <!-- 商品價格、加入購物車 -->
      <!-- 商品價格、加入購物車 -->
      <div class="Detail">
        <h4>車款介紹</h4>
          <div class="introduce">
            <div class="p-tab">
              <button class="tablinks" onclick="openCity(event, 'info')" id="defaultOpen">產品特色</button>
              <button class="tablinks" onclick="openCity(event, 'tech')">技術規格</button>
            </div>
            <div id="info" class="tabcontent">
              體驗LX升級版，歡樂而活<br>
              Vespa LX 125 i-get ABS全新歐盟五期(Euro 5)環保新車，符合台灣七期環保法規，保有Vespa優雅經典的基因，<br>
              並融入新科技運用，搭載原廠ABS煞車防鎖死系統，更配備亮度升級兩倍的Class D LED車頭燈，並有LED日間行車燈、USB充電插座，<br>
              經典扇形儀表板則為液晶顯示。於騎乘體驗上，LX具備符合亞洲騎士人體工學的座墊設計，引擎吊架及減震橡膠的設計則充分阻隔引擎振動，<br>
              同時強化騎乘舒適感的踏墊設計，確保騎士及乘客的乘坐品質，盡情享受騎乘的舒適與喜悅。<br>
              在外觀設計上，LX 具傳奇Vespa的車身曲線、標誌性的經典圓形頭燈，並提供了多種繽紛車色，讓人盡情妝點這個城市的色彩。<br>
              </div>
              <div id="tech" class="tabcontent">
                寬度：705 mm<br>
                長度：1770 mm<br>
                輪距：1280 mm<br>
                座墊高度：785 mm<br>
                油耗值：51.8 km/l<br>
                極速：91 km/h<br>
                引擎：Euro 5<br>
                油箱容量：7 ± 0.5 L<br>
              </div>
              <hr>
          <form action="">
          <h3>LX 125 Euro 5(5色)</h3>
          <h3>NT$ 121,900</h3>
          <h4>數量</h4>
          <select name="quan">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
          </select>
          <h4>顏色</h4>
          <select name="quan">
            <option value="1">灰</option>
            <option value="2">黑</option>
            <option value="3">綠</option>
            <option value="4">紅</option>
            <option value="5">白</option>
          </select>
          <input type="submit" value="加入購物車">
          </div>
        </form>
      </div>
    </div>
    <div class="wrapper">
    </div>
    <footer class="footer">Copyright © since 2022 Vespa All Rights Reserved.
    </footer>

    <script>
      var slideIndex = 1;
      showSlides(slideIndex);
  
      function plusSlides(n) {
        showSlides(slideIndex += n);
      }
  
      function currentSlide(n) {
        showSlides(slideIndex = n);
      }
  
      function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        var col = document.getElementsByClassName("column");
        if (n > slides.length) {
          slideIndex = 1
        }
        if (n < 1) {
          slideIndex = slides.length
        }
        for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
          col[i].style.border = "none";
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        col[slideIndex - 1].style.border = "#4980a3 1px solid";
      }
    </script>
    <script>
      function openCity(evt, cityName) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
          tabcontent[i].style.display = "none";
      }
      tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
          tablinks[i].className = tablinks[i].className.replace(" active", "");
      }
      document.getElementById(cityName).style.display = "block";
      evt.currentTarget.className += " active";
      }
      document.getElementById("defaultOpen").click();   /*預設被按下*/
    </script>
</body>
</html>