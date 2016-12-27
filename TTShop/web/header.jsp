<%-- 
    Document   : header
    Created on : Nov 28, 2016, 8:12:26 PM
    Author     : TAN
--%>
<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
    </head>
    <body>
        <%
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
        %>
        <div id="header">
<div class="container">
<div id="welcomeLine" class="row">
	<div class="span6">Welcome!<strong>  <%if(users!=null){%><%=users.getUserEmail()%>
                <%}%></strong></div>
	<div class="span6">
	<div class="pull-right">
		
		<a href="cart.jsp"><span class="btn btn-mini btn-primary"><i class="icon-shopping-cart icon-white"></i>Có [ 3 ] sản phẩm trong giỏ hàng </span> </a> 
	</div>
	</div>
</div>
<!-- Navbar ================================================== -->
<div id="logoArea" class="navbar">
<a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</a>
  <div class="navbar-inner">
    <a class="brand" href="index.html"><img src="themes/images/logo.png" alt="Bootsshop"/></a>
		<form class="form-inline navbar-search" method="post" action="products.html" >
		<input id="srchFld" class="srchTxt" type="text" />
		  
		  <button type="submit" id="submitButton" class="btn btn-primary">Go</button>
    </form>
    <ul id="topMenu" class="nav pull-right">
	 <li class=""><a href="special_offer.html">Trang chủ</a></li>
	 <li class=""><a href="normal.html">Sản phẩm</a></li>
	 <li class=""><a href="contact.html">Liên hệ</a></li>
	 <li class="">
                    <%if(users==null){%>
                        <a href="login.jsp" style="padding-right:0"><span class="btn btn-large btn-success">Đăng nhập</span></a>
                    <%}%>
	 
	
	</li>
    </ul>
  </div>
</div>
</div>
</div>
<!-- Header End====================================================================== -->
    </body>
</html>
