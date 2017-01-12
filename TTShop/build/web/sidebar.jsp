<%-- 
    Document   : sidebar
    Created on : Nov 28, 2016, 9:31:06 PM
    Author     : TAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SideBar</title>
    </head>
    <body>
        <%@page import="model.Category"%>
        <%@page import="dao.CategoryDAO"%> 
        <% CategoryDAO categoryDAO = new CategoryDAO(); %> 
 
       <!-- Sidebar ================================================== -->
	<div id="sidebar" class="span3">
		
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<li class="subMenu open"><a>Danh Mục</a>
				<ul>
                                                                        <%
                                                                            for (Category c : categoryDAO.getListCategory()){
                                                                        %>
                                                                        <li><a class="active" href="product.jsp?category=<%=c.getCategoryID()%>"><i class="icon-chevron-right"></i><%=c.getCategoryName()%> </a></li>
                                                                       <%
                                                                           }
                                                                       %>
                                                                        
                                                                        
				</ul>
			</li>
		</ul>
		<br/>
		  <div class="thumbnail">
			<img src="themes/images/products/panasonic.jpg" alt="Bootshop panasonoc New camera"/>
			<div class="caption">
			  <h5>Panasonic</h5>
				<h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
			</div>
		  </div><br/>
			<div class="thumbnail">
				<img src="themes/images/products/kindle.png" title="Bootshop New Kindel" alt="Bootshop Kindel">
				<div class="caption">
				  <h5>Kindle</h5>
				    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a></h4>
				</div>
			  </div><br/>
			<div class="thumbnail">
				<img src="themes/images/payment_methods.png" title="Bootshop Payment Methods" alt="Payments Methods">
				<div class="caption">
				  <h5>Payment Methods</h5>
				</div>
			  </div>
	</div>
<!-- Sidebar end=============================================== -->
    </body>
</html>
