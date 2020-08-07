<%@ page contentType = "text/html;charset=utf-8" %>
<html>
<head>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"                crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J"         crossorigin="anonymous"></script>    
</head>
<body>
    <div id ="header">  
    <!---------------------navbar------------------------>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"> <img src="/peachProject/img/peach.png" width="40px"/></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/WEB-INF/views/main/index.jsp"> Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="intro.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          소개
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/peachProject/jsp/intro/intro.jsp">복숭아 품종</a>
          <a class="dropdown-item" href="/peachProject/jsp/intro/vitamin.jsp">영양성분</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="/peachProject/jsp/intro/howToPick.jsp">고르는 법</a>
        </div>
      </li>
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="peachProject/today_market_price.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          시세
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="peachProject/today_market_price.jsp">오늘의 시세</a>
          <a class="dropdown-item" href="peachProcjet/market_price_trend.jsp">시세동향</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="peachProjcet/market_forecast.jsp">시세예측</a>
        </div>
      </li>
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="purchase.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          구매
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="peachProject/online.jsp">온라인</a>
          <a class="dropdown-item" href="peachProject/offline.jsp">오프라인</a>
        </div>
      </li><li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="community.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          커뮤니티
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="peachProject/community.jsp">자유게시판</a>
          <a class="dropdown-item" href="peachproject/review.jsp">후기</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <a class="navbar-brand" href="/peachProject/loginForm.syu">로그인</a>
      <a class="navbar-brand" href="/peachProject/jsp/signup/signupForm.jsp">회원가입</a>
    </form>
  </div>
</nav>
</div>

</body>
</html>