<%@ page contentType = "text/html;charset=utf-8" %>

<html>
<head>

</head>
<body>
<div id="header">
    <jsp:include page="/WEB-INF/views/includes/header.jsp"/>
</div>
 
    <ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#qwe">복숭아 품질</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#asd">영양성분</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#zxc">고르는 법</a>
  </li>
</ul>
<div class="tab-content">
  <div class="tab-pane fade show active" id="qwe">
    <h>복숭아의 영양성분 분석</h>
    <p>영양성분</p>
  </div>
  <div class="tab-pane fade" id="asd">
    <p> 영양성분 </p>
  </div>
  <div class="tab-pane fade" id="zxc">
    <p> 고르는 법 </p>
  </div>
</div>

</body>	
</html>