<%-- 
    Document   : detail
    Created on : Nov 28, 2016, 9:45:17 PM
    Author     : TAN
--%>
<%@page import="java.text.NumberFormat"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <title>Detail</title>
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
     Product product = new Product();
     String productID = "";
     if (request.getParameter("product") != null) {
          productID = request.getParameter("product");
          product = productDAO.getProduct(Long.parseLong(productID));
     }
      String category_id = "";
            if(request.getParameter("category")!=null){
                category_id = request.getParameter("category");
            }
%>

        <jsp:include page="header.jsp"></jsp:include>
        <div id="mainBody">
	<div class="container">
	<div class="row">
                    <jsp:include page="sidebar.jsp"></jsp:include>
	<div class="span9">
    <ul class="breadcrumb">
    <li><a href="index.html">Home</a> <span class="divider">/</span></li>
    <li><a href="products.html">Products</a> <span class="divider">/</span></li>
    <li class="active">product Details</li>
    </ul>
            
            
<div class="row">	  
			<div id="gallery" class="span3">
                                                    <a href="themes/images/products/large/f1.jpg" title="Fujifilm FinePix S2950 Digital Camera">
                                                                        <img src="upload/product/<%=product.getProductImage()%>" style="width:100%" alt="Fujifilm FinePix S2950 Digital Camera"/>
                                                    </a>
			
			  
			 <div class="btn-toolbar">
			  <div class="btn-group">
				<span class="btn"><i class="icon-envelope"></i></span>
				<span class="btn" ><i class="icon-print"></i></span>
				<span class="btn" ><i class="icon-zoom-in"></i></span>
				<span class="btn" ><i class="icon-star"></i></span>
				<span class="btn" ><i class=" icon-thumbs-up"></i></span>
				<span class="btn" ><i class="icon-thumbs-down"></i></span>
			  </div>
			</div>
			</div>
			<div class="span6">
				<h3><%=product.getProductName()%></h3>
				<hr class="soft"/>
				<form class="form-horizontal qtyFrm">
				  <div class="control-group">
                                      <label class="control-label" style="width: 180px;"><span>Giá: <%=NumberFormat.getInstance().format(product.getProductPrice())%> VNĐ</span></label>
					<div class="controls">
                                                                                            <a href="CartServlet?command=plus&productID=<%=product.getProductID()%>" type="submit" class="btn btn-large btn-primary pull-right">Thêm vào giỏ hàng <i class=" icon-shopping-cart"></i></a>
					</div>
				  </div>
				</form>
				
				<hr class="soft"/>
                                                                        <h4><u>Mô tả:</u></h4>
                                                                        <p><%=product.getProductDescription()%></p>
				<a class="btn btn-small pull-right" href="#detail">Xem thêm chi tiết</a>
				<br class="clr"/>
			<a href="#" name="detail"></a>
			<hr class="soft"/>
			</div>
			
			<div class="span9">
            <ul id="productDetail" class="nav nav-tabs">
              <li class="active"><a href="#home" data-toggle="tab">Chi tiết sản phẩm</a></li>
              <li><a href="#profile" data-toggle="tab">Top sản phẩm bán chạy</a></li>
            </ul>
            <div id="myTabContent" class="tab-content">
              <div class="tab-pane fade active in" id="home">
                  <h4><u>Chi tiết sản phẩm:</u></h4><br>
                  <%=product.getProductContent()%>
              </div>
		<div class="tab-pane fade" id="profile">
		<div id="myTab" class="pull-right">
		</div>
		<br class="clr"/>
		<div class="tab-content">
			
			<div class="tab-pane active" id="blockView">
				<ul class="thumbnails">
                                                                                <%
                                                            for (Product p : productDAO.getListProductByRate()) {
                                                        %>
                                                        <li class="span3">
                                                            <div class="thumbnail" style="height: 390px;">
                                                                <a href="detail.jsp?product=<%=p.getProductID()%>"><img style="height: 210px;" src="upload/product/<%=p.getProductImage()%>" alt="<%=p.getProductName()%>"/></a>
				<div class="caption">
				  <h5><%=p.getProductName()%></h5>
                                                                            <h4 style="text-align:center"><a class="btn btn-primary" href="#">Giá:<%=NumberFormat.getInstance().format(p.getProductPrice())%> VNĐ</a></h4>
				   <h4 style="text-align:center"><a class="btn" href="detail.jsp?product=<%=p.getProductID()%>"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Thêm giỏ hàng <i class="icon-shopping-cart"></i></a> </h4>
				</div>
			  </div>
			</li>
                                                        
                                                        <%
                                                            }
                                                        %>
				</ul>
			<hr class="soft"/>
			</div>
		</div>
				<br class="clr">
					 </div>
		</div>
          </div>

	</div>
</div>
</div>
</div>
</div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

