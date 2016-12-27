<%-- 
    Document   : login
    Created on : Nov 28, 2016, 9:37:42 PM
    Author     : TAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<!--Less styles -->
   <!-- Other Less css file //different less files has different color scheam
	<link rel="stylesheet/less" type="text/css" href="themes/less/simplex.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/classified.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/amelia.less">  MOVE DOWN TO activate
	-->
	<!--<link rel="stylesheet/less" type="text/css" href="themes/less/bootshop.less">
	<script src="themes/js/less.js" type="text/javascript"></script> -->
	
<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen"/>
    <link href="themes/css/base.css" rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
	<link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->	
	<link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="themes/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png">
	<style type="text/css" id="enject"></style>
  </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div id="mainBody">
	<div class="container">
	<div class="row">
                    <jsp:include page="sidebar.jsp"></jsp:include>
	<div class="span9">	
			  		
    <ul class="breadcrumb">
        <li><a href="http://localhost:8080/webproduct/">Trang chủ</a> <span class="divider">/</span></li>
        <li class="active">Đăng nhập</li>
    </ul>
    <h3>ĐĂNG NHẬP</h3>  
    <div class="well">
    
    <!-- <div class="alert alert-info fade in">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
     </div>
    <div class="alert fade in">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
     </div>
     <div class="alert alert-block alert-error fade in">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>Lorem Ipsum is simply</strong> dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
     </div>  -->
    <form class="form-horizontal" method="post" action="UsersServlet" >
        <h4>Đăng ký thành viên</h4>
<!--        <%if(session.getAttribute("error")!=null){%>
       <div class="alert alert-block alert-error fade in">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>Thông báo:</strong><%=session.getAttribute("error")%>
     </div>
       <%}%> -->
     <hr>
        
        <%if(session.getAttribute("error")!=null){%>
        <div>                                   
            <p style="color:red"><%=session.getAttribute("error")%></p>                             
        </div>                        
            <%}%> 
        <div class="control-group">
        <label class="control-label" for="input_email">Email: <sup>*</sup></label>
        <div class="controls">
          <input type="text" class="input" id="email" name="email" value="">
          <span id="user-result"></span>
          <div class="clear"></div>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label" for="inputPassword1">Mật khẩu: <sup>*</sup></label>
        <div class="controls">
          <input type="password" class="input" id="password" name="password">
          <div class="clear"></div>
        </div>
      </div>
  
    <div class="control-group">
            <div class="controls">
                <input type="hidden" value="login" name="command" >
                 <input type="submit" value="Đăng nhập" class="btn btn-success"> 
                 <a class="btn btn-link" href="register.jsp">Đăng ký?</a>
            </div>
        </div>      
    </form>
</div>
   </div>
</div>
</div>
</div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
