<%-- 
    Document   : cart
    Created on : Dec 12, 2016, 3:33:13 PM
    Author     : TAN
--%>

<%@page import="javax.script.ScriptEngine"%>
<%@page import="javax.script.ScriptEngineManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Item"%>
<%@page import="java.util.Map"%>
<%@page import="model.Cart"%>
<%@page import="model.Users"%>
<%@page import="java.text.NumberFormat"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <title>Giỏ hàng</title>
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
        
        <%
            
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            
           
        %>
        <div id="mainBody">
	<div class="container">
	<div class="row">
                    <jsp:include page="sidebar.jsp"></jsp:include>
	<div class="span9">	
			  		    <ul class="breadcrumb">
		<li><a href="http://localhost:8080/webproduct/">Trang chủ</a> <span class="divider">/</span></li>
		<li class="active"> Giỏ hàng</li>
    </ul>	
<form action="" method="post">		
	
    <table class="table table-bordered table-hover">
              <thead>
                <tr>
                  <th style="text-align: center;">Ảnh</th>
                  <th>Tên</th>
                  <th>Số lượng</th>
				  <th>Đơn giá</th>
				  <th>Thành tiền</th>
				  <th style="text-align: center;">Xóa sản phẩm</th>
				</tr>
              </thead>
              <tbody>
                  <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%> 
                  <tr>
                            <%ScriptEngineManager manager = new ScriptEngineManager();
                            ScriptEngine engine = manager.getEngineByName("js");
                            Object result = engine.eval("4*5");%>
                            <td style="text-align: center;"><a href=""><img width="60" src="upload/product/<%=list.getValue().getProduct().getProductImage()%>" alt=""></a></td>
                            <td><b><%=list.getValue().getProduct().getProductName()%></b></td>
                            <td><input class="span1" style="max-width:auto" placeholder="1" size="16" type="number" name="qty_18" value="1"> </td>
                            <td><%=NumberFormat.getInstance().format(list.getValue().getProduct().getProductPrice())%> VNĐ</td>
                            <td><%=NumberFormat.getInstance().format(list.getValue().getProduct().getProductPrice())%> VNĐ</td>
<!--                            <td><%=list.getValue().getQty()%> x <%=NumberFormat.getInstance().format(list.getValue().getProduct().getProductPrice())%> VNĐ</td>-->
                            <td style="text-align: center;"><a data-toggle="modal" data-target="#myModal2" class="btn btn-danger" type="button"><i class="icon-remove icon-white"></i></a></td>
                            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                          <h4 class="modal-title" id="myModalLabel">Thông báo</h4>
                        </div>
                        <div class="modal-body">
                          <p>Bạn có chắc muốn xóa sản phẩm này ra khỏi giỏ hàng?</p>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                          <a href="CartServlet?command=remove&productID=<%=list.getValue().getProduct().getProductID()%>" class="btn btn-danger">Xác nhận xóa</a>

                        </div>
                      </div>
                    </div>
                  </div>
                </tr>
                <%}%>
                <!-- Modal Delele Product-->
                   <!-- End Modal -->
                            
				</tbody>
        <thead>
          <tr>
                  <td colspan="2" style="text-align:right"><strong></strong></td>
                  <td style="display:block"> <strong> </strong></td>
                  <td colspan="2" style="text-align:right"><strong></strong></td>
                  <td  style="display:block;"> <strong>  </strong></td>
                </tr>
        </thead>
            </table>
            


            <a href="checkout.jsp" class="btn-large btn-success pull-right">Mua hàng</a>
            <button type="submit" class="btn btn-primary btn-large pull-left">Cập nhật</button>


</form>	
				</div>
</div>
</div>
</div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
