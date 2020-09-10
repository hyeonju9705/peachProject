<%@ page contentType = "text/html;charset=utf-8" %>

<html>
    <head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>index</title>
	<!-- -------------------------------jQuery--------------------------- -->
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"/>
	<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	<!-- ---------------------------------fotorama--------------------------- -->
	<link  href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
	<link rel="stylesheet" href="css/a.css">

<style>

    /* 여기부터 스타일시트시작 */
   html {
        width: 100%;
        height: 100%;
      }
      
      body {
        /* background: -webkit-linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%);
        background: linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%); */
        color: rgba(0, 0, 0, 0.6);
        font-family: "Roboto", sans-serif;
        font-size: 14px;
        line-height: 1.6em;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
      }
      
      .overlay, .form-panel.one:before {
        position: absolute;
        top: 0;
        left: 0;
        display: none;
        background: rgba(0, 0, 0, 0.8);
        width: 100%;
        height: 100%;
      }
      
      .form {
        z-index: 15;
        position: relative;
        background: #FFFFFF;
        width: 600px;
        border-radius: 4px;
        box-shadow: 0 0 30px rgba(0, 0, 0, 0.1);
        box-sizing: border-box;
        margin: 100px auto 10px;
        overflow: hidden;
      }
      .form-toggle {
        z-index: 10;
        position: absolute;
        top: 60px;
        right: 60px;
        background: #FFFFFF;
        width: 60px;
        height: 60px;
        border-radius: 100%;
        -webkit-transform-origin: center;
            -ms-transform-origin: center;
                transform-origin: center;
        -webkit-transform: translate(0, -25%) scale(0);
            -ms-transform: translate(0, -25%) scale(0);
                transform: translate(0, -25%) scale(0);
        opacity: 0;
        cursor: pointer;
        -webkit-transition: all 0.3s ease;
                transition: all 0.3s ease;
      }
      .form-toggle:before, .form-toggle:after {
        content: '';
        display: block;
        position: absolute;
        top: 50%;
        left: 50%;
        width: 30px;
        height: 4px;
        /* background: #4285F4; */
        -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
                transform: translate(-50%, -50%);
      }
      .form-toggle:before {
        -webkit-transform: translate(-50%, -50%) rotate(45deg);
            -ms-transform: translate(-50%, -50%) rotate(45deg);
                transform: translate(-50%, -50%) rotate(45deg);
      }
      .form-toggle:after {
        -webkit-transform: translate(-50%, -50%) rotate(-45deg);
            -ms-transform: translate(-50%, -50%) rotate(-45deg);
                transform: translate(-50%, -50%) rotate(-45deg);
      }
      .form-toggle.visible {
        -webkit-transform: translate(0, -25%) scale(1);
            -ms-transform: translate(0, -25%) scale(1);
                transform: translate(0, -25%) scale(1);
        opacity: 1;
      }
      .form-group {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-flex-wrap: wrap;
            -ms-flex-wrap: wrap;
                flex-wrap: wrap;
        -webkit-box-pack: justify;
        -webkit-justify-content: space-between;
            -ms-flex-pack: justify;
                justify-content: space-between;
        margin: 0 0 20px;
      }
      .form-group:last-child {
        margin: 0;
      }
      .form-group label {
        display: block;
        margin: 0 0 10px;
        color: rgba(0, 0, 0, 0.6);
        font-size: 12px;
        font-weight: 500;
        line-height: 1;
        text-transform: uppercase;
        letter-spacing: .2em;
      }
      .two .form-group label {
        color: #FFFFFF;
      }
      .form-group input {
        outline: none;
        display: block;
        background: rgba(0, 0, 0, 0.1);
        /*  width: 100%; */
        border: 0;
        border-radius: 4px;
        box-sizing: border-box;
        padding: 12px 20px;
        color: rgba(0, 0, 0, 0.6);
        font-family: inherit;
        font-size: inherit;
        font-weight: 500;
        line-height: inherit;
        -webkit-transition: 0.3s ease;
                transition: 0.3s ease;
      }
      .form-group input:focus {
        color: rgba(0, 0, 0, 0.8);
      }
      .two .form-group input {
        color: #FFFFFF;
      }
      .two .form-group input:focus {
        color: #FFFFFF;
      }
      .form-group button {
        outline: none;
         background: #ff976e; 
        width: 100%;
        border: 0;
        border-radius: 4px;
        padding: 12px 20px;
        color: #FFFFFF;
        font-family: inherit;
        font-size: inherit;
        font-weight: 500;
        line-height: inherit;
        text-transform: uppercase;
        cursor: pointer;
      }
      .two .form-group button {
        background: #FFFFFF;
        color: #ff976e;
      }
      .form-group .form-remember {
        font-size: 12px;
        font-weight: 400;
        letter-spacing: 0;
        text-transform: none;
      }
      .form-group .form-remember input[type='checkbox'] {
        display: inline-block;
        width: auto;
        margin: 0 10px 0 0;
      }
      .form-group .form-recovery {
        color: #ff976e;
        font-size: 12px;
        text-decoration: none;
      }
      .form-panel {
        padding: 60px calc(5% + 60px) 60px 60px;
        box-sizing: border-box;
      }
      .form-panel.one:before {
        content: '';
        display: block;
        opacity: 0;
        visibility: hidden;
        -webkit-transition: 0.3s ease;
                transition: 0.3s ease;
      }
      .form-panel.one.hidden:before {
        display: block;
        opacity: 1;
        visibility: visible;
      }
      .form-panel.two {
        z-index: 5;
        position: absolute;
        top: 0;
        left: 95%;
        background: #ff976e;
        width: 100%;
        min-height: 100%;
        padding: 60px calc(10% + 60px) 60px 60px;
        -webkit-transition: 0.3s ease;
                transition: 0.3s ease;
        cursor: pointer;
      }
      .form-panel.two:before, .form-panel.two:after {
        content: '';
        display: block;
        position: absolute;
        top: 60px;
        left: 1.5%;
        background: rgba(255, 255, 255, 0.2);
        height: 30px;
        width: 2px;
        -webkit-transition: 0.3s ease;
                transition: 0.3s ease;
      }
      .form-panel.two:after {
        left: 3%;
      }
      .form-panel.two:hover {
        left: 93%;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      }
      .form-panel.two:hover:before, .form-panel.two:hover:after {
        opacity: 0;
      }
      .form-panel.two.active {
        left: 10%;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        cursor: default;
      }
      .form-panel.two.active:before, .form-panel.two.active:after {
        opacity: 0;
      }
      .form-header {
        margin: 0 0 40px;
      }
      .form-header h1 {
        padding: 4px 0;
        color: #ff976e;
        font-size: 24px;
        font-weight: 700;
        text-transform: uppercase;
      }
      .two .form-header h1 {
        position: relative;
        z-index: 40;
        color: #FFFFFF;
      }
      
      .pen-footer {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-orient: horizontal;
        -webkit-box-direction: normal;
        -webkit-flex-direction: row;
            -ms-flex-direction: row;
                flex-direction: row;
        -webkit-box-pack: justify;
        -webkit-justify-content: space-between;
            -ms-flex-pack: justify;
                justify-content: space-between;
        width: 600px;
        margin: 20px auto 100px;
      }
      .pen-footer a {
        color: #FFFFFF;
        font-size: 12px;
        text-decoration: none;
        text-shadow: 1px 2px 0 rgba(0, 0, 0, 0.1);
      }
      .pen-footer a .material-icons {
        width: 12px;
        margin: 0 5px;
        vertical-align: middle;
        font-size: 12px;
      }
    
</style>
</head>
 
<body>
<div id="header">
    <jsp:include page="/WEB-INF/views/includes/header.jsp"/>
</div>
 <!-- ----회원가입 코드--- -->
    <div class="form">
        <div class="form-toggle"></div>
        <div class="form-panel one">
          <div class="form-header">
            <h1>Edit Account</h1>
          </div>
          <div class="form-content">
            <form>
             <!-- 수정 전   -->
            <!--   <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required="required"/>
              </div>
              <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required="required"/>
              </div>
              <div class="form-group">
                <label for="cpassword">Confirm Password</label>
                <input type="password" id="cpassword" name="cpassword" required="required">
              </div>
              <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required="required">
              </div> -->
           
              <!--여기서 부터 바꾼내용  -->
              <div class="form-group">
                <label for="userid">User ID</label>
                <input type="userid" id="userid" name="userid" required="required">
              </div>
              <div class="form-group">
                <label for="password">Password</label>
                <input type="userid" id="userid" name="userid" required="required">
              </div>
                <div class="form-group">
                <label for="username">User Name</label>
                <input type="username" id="username" name="username" required="required">
              </div>
                <div class="form-group">
                <label for="nickname">Nickname</label>
                <input type="nickname" id="nickname" name="nickname" required="required">
              </div>
              <div class="form-group">
                <label for="email">email</label>
                <input type="email" id="" name="email" required="required">
              </div>
              <div class="form-group">
                <label for="phonenumber">Phone Number</label>
                <input type="phonenumber" id="phonenumber" name="phonenumber" required="required">
              </div>  
               
              <div class="form-group">
                <label for="adress">Adress</label>
                <input type="adress" id="adress" name="adress" required="required">
              </div>  
               <div class="form-group">
                <label for="age">Age</label>
                <input type="age" id="age" name="age" required="required">
              </div>
              <!-- 여기까지 -->
             
              <div class="form-group">
               <button type="button" onclick="location.href='/peachProject/' ">Revise</button>
               <!--   <button type="submit">Revise</button> -->
              </div>
            </form>
          </div>
        </div>
        
      </div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
      <script type="text/javascript">
      $(document).ready(function() {
        var panelOne = $('.form-panel.two').height(),
          panelTwo = $('.form-panel.two')[0].scrollHeight;
      
        $('.form-panel.two').not('.form-panel.two.active').on('click', function(e) {
          e.preventDefault();
      
          $('.form-toggle').addClass('visible');
          $('.form-panel.one').addClass('hidden');
          $('.form-panel.two').addClass('active');
          $('.form').animate({
            'height': panelTwo
          }, 200);
        });
      
        $('.form-toggle').on('click', function(e) {
          e.preventDefault();
          $(this).removeClass('visible');
          $('.form-panel.one').removeClass('hidden');
          $('.form-panel.two').removeClass('active');
          $('.form').animate({
            'height': panelOne
          }, 200);
        });
      });
      </script>
    
    </body>
</html>