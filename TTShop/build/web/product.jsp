<%-- 
    Document   : product
    Created on : Nov 28, 2016, 8:37:01 PM
    Author     : TAN
--%>
<%@page import="java.text.NumberFormat"%>
<%@page import="model.Product"%>
<%@page import="model.Cart"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <title>Product</title>
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
        <%
            ProductDAO productDAO = new ProductDAO();
            String category_id = "";
            if(request.getParameter("category")!=null){
                category_id = request.getParameter("category");
            }
            
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div id="mainBody">
	<div class="container">
	<div class="row">
                    <jsp:include page="sidebar.jsp"></jsp:include>
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.jsp">Trang chủ</a> <span class="divider">/</span></li>
		<li class="active">Products Name</li>
    </ul>
	<h3> Products Name <small class="pull-right"> 40 products are available </small></h3>	
	
	  
<div id="myTab" class="pull-right">
</div>
<br class="clr"/>
<div class="tab-content">

	<div class="tab-pane  active" id="blockView">
		<ul class="thumbnails">
			
                                                        <%
                                                            for (Product p : productDAO.getListProductByCategory(Long.parseLong(category_id))) {
                                                        %>
                                                        <li class="span3">
                                                            <div class="thumbnail" style="height: 390px;">
                                                                <a href="detail.jsp?product=<%=p.getProductID()%>"><img style="height: 210px;" src="upload/product/<%=p.getProductImage()%>" alt="<%=p.getProductName()%>"/></a>
				<div class="caption">
				  <h5><%=p.getProductName()%></h5>
                                                                            <h4 style="text-align:center"><a class="btn btn-primary" href="#">Giá:<%=NumberFormat.getInstance().format(p.getProductPrice())%> VNĐ</a></h4>
				   <h4 style="text-align:center"><a class="btn" href="detail.jsp?product=<%=p.getProductID()%>"> <i class="icon-zoom-in"></i></a> <a class="btn" href="CartServlet?command=plus&productID=<%=p.getProductID()%>">Thêm giỏ hàng <i class="icon-shopping-cart"></i></a> </h4>
				</div>
			  </div>
			</li>
                                                        
                                                        <%
                                                            }
                                                        %>
			
		  </ul>
	</div>
</div>

	
	<div class="pagination">
			<ul>
			<li><a href="#">&lsaquo;</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">...</a></li>
			<li><a href="#">&rsaquo;</a></li>
			</ul>
			</div>
			<br class="clr"/>
</div>
</div>
</div>
</div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
