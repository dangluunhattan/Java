package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import model.Item;
import java.util.Map;
import model.Cart;
import model.Users;
import java.text.NumberFormat;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title>Giỏ hàng</title>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("<!--Less styles -->\n");
      out.write("   <!-- Other Less css file //different less files has different color scheam\n");
      out.write("\t<link rel=\"stylesheet/less\" type=\"text/css\" href=\"themes/less/simplex.less\">\n");
      out.write("\t<link rel=\"stylesheet/less\" type=\"text/css\" href=\"themes/less/classified.less\">\n");
      out.write("\t<link rel=\"stylesheet/less\" type=\"text/css\" href=\"themes/less/amelia.less\">  MOVE DOWN TO activate\n");
      out.write("\t-->\n");
      out.write("\t<!--<link rel=\"stylesheet/less\" type=\"text/css\" href=\"themes/less/bootshop.less\">\n");
      out.write("\t<script src=\"themes/js/less.js\" type=\"text/javascript\"></script> -->\n");
      out.write("\t\n");
      out.write("<!-- Bootstrap style --> \n");
      out.write("    <link id=\"callCss\" rel=\"stylesheet\" href=\"themes/bootshop/bootstrap.min.css\" media=\"screen\"/>\n");
      out.write("    <link href=\"themes/css/base.css\" rel=\"stylesheet\" media=\"screen\"/>\n");
      out.write("<!-- Bootstrap style responsive -->\t\n");
      out.write("\t<link href=\"themes/css/bootstrap-responsive.min.css\" rel=\"stylesheet\"/>\n");
      out.write("\t<link href=\"themes/css/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<!-- Google-code-prettify -->\t\n");
      out.write("\t<link href=\"themes/js/google-code-prettify/prettify.css\" rel=\"stylesheet\"/>\n");
      out.write("<!-- fav and touch icons -->\n");
      out.write("    <link rel=\"shortcut icon\" href=\"themes/images/ico/favicon.ico\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"themes/images/ico/apple-touch-icon-144-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"themes/images/ico/apple-touch-icon-114-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"themes/images/ico/apple-touch-icon-72-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" href=\"themes/images/ico/apple-touch-icon-57-precomposed.png\">\n");
      out.write("\t<style type=\"text/css\" id=\"enject\"></style>\n");
      out.write("  </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        \n");
      out.write("        ");

            
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            
           
        
      out.write("\n");
      out.write("        <div id=\"mainBody\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t<div class=\"row\">\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar.jsp", out, false);
      out.write("\n");
      out.write("\t<div class=\"span9\">\t\n");
      out.write("\t\t\t  \t\t    <ul class=\"breadcrumb\">\n");
      out.write("\t\t<li><a href=\"http://localhost:8080/webproduct/\">Trang chủ</a> <span class=\"divider\">/</span></li>\n");
      out.write("\t\t<li class=\"active\"> Giỏ hàng</li>\n");
      out.write("    </ul>\t\n");
      out.write("<form action=\"\" method=\"post\">\t\t\n");
      out.write("\t\n");
      out.write("    <table class=\"table table-bordered table-hover\">\n");
      out.write("              <thead>\n");
      out.write("                <tr>\n");
      out.write("                  <th style=\"text-align: center;\">Ảnh</th>\n");
      out.write("                  <th>Tên</th>\n");
      out.write("                  <th>Số lượng</th>\n");
      out.write("\t\t\t\t  <th>Đơn giá</th>\n");
      out.write("\t\t\t\t  <th>Thành tiền</th>\n");
      out.write("\t\t\t\t  <th style=\"text-align: center;\">Xóa sản phẩm</th>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("              </thead>\n");
      out.write("              <tbody>\n");
      out.write("                  ");
for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {
      out.write(" \n");
      out.write("                  <tr>\n");
      out.write("                            ");
ScriptEngineManager manager = new ScriptEngineManager();
                            ScriptEngine engine = manager.getEngineByName("js");
                            Object result = engine.eval("4*5");
      out.write("\n");
      out.write("                            <td style=\"text-align: center;\"><a href=\"\"><img width=\"60\" src=\"upload/product/");
      out.print(list.getValue().getProduct().getProductImage());
      out.write("\" alt=\"\"></a></td>\n");
      out.write("                            <td><b>");
      out.print(list.getValue().getProduct().getProductName());
      out.write("</b></td>\n");
      out.write("                            <td><input class=\"span1\" style=\"max-width:auto\" placeholder=\"1\" size=\"16\" type=\"number\" name=\"qty_18\" value=\"1\"> </td>\n");
      out.write("                            <td>");
      out.print(NumberFormat.getInstance().format(list.getValue().getProduct().getProductPrice()));
      out.write(" VNĐ</td>\n");
      out.write("                            <td>");
      out.print(NumberFormat.getInstance().format(list.getValue().getProduct().getProductPrice()));
      out.write(" VNĐ</td>\n");
      out.write("<!--                            <td>");
      out.print(list.getValue().getQty());
      out.write(" x ");
      out.print(NumberFormat.getInstance().format(list.getValue().getProduct().getProductPrice()));
      out.write(" VNĐ</td>-->\n");
      out.write("                            <td style=\"text-align: center;\"><a data-toggle=\"modal\" data-target=\"#myModal2\" class=\"btn btn-danger\" type=\"button\"><i class=\"icon-remove icon-white\"></i></a></td>\n");
      out.write("                            <div class=\"modal fade\" id=\"myModal2\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\">\n");
      out.write("                    <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("                      <div class=\"modal-content\">\n");
      out.write("                        <div class=\"modal-header\">\n");
      out.write("                          <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">×</span></button>\n");
      out.write("                          <h4 class=\"modal-title\" id=\"myModalLabel\">Thông báo</h4>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"modal-body\">\n");
      out.write("                          <p>Bạn có chắc muốn xóa sản phẩm này ra khỏi giỏ hàng?</p>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"modal-footer\">\n");
      out.write("                          <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Đóng</button>\n");
      out.write("                          <a href=\"CartServlet?command=remove&productID=");
      out.print(list.getValue().getProduct().getProductID());
      out.write("\" class=\"btn btn-danger\">Xác nhận xóa</a>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("                </tr>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("                <!-- Modal Delele Product-->\n");
      out.write("                   <!-- End Modal -->\n");
      out.write("                            \n");
      out.write("\t\t\t\t</tbody>\n");
      out.write("        <thead>\n");
      out.write("          <tr>\n");
      out.write("                  <td colspan=\"2\" style=\"text-align:right\"><strong></strong></td>\n");
      out.write("                  <td style=\"display:block\"> <strong> </strong></td>\n");
      out.write("                  <td colspan=\"2\" style=\"text-align:right\"><strong></strong></td>\n");
      out.write("                  <td  style=\"display:block;\"> <strong>  </strong></td>\n");
      out.write("                </tr>\n");
      out.write("        </thead>\n");
      out.write("            </table>\n");
      out.write("            <button type=\"button\" class=\"btn btn-link btn-large pull-left\" data-toggle=\"modal\" data-target=\"#myModal\">\n");
      out.write("              <p class=\"text-error\">Xóa Giỏ Hàng ?</p>\n");
      out.write("            </button>\n");
      out.write("\n");
      out.write("<!-- Modal Delete All-->\n");
      out.write("<div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\">\n");
      out.write("  <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">×</span></button>\n");
      out.write("        <h4 class=\"modal-title\" id=\"myModalLabel\">Thông báo</h4>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("        <p>Bạn có chắc muốn xóa toàn bộ giỏ hàng không?</p>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-footer\">\n");
      out.write("        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Đóng</button>\n");
      out.write("        <a href=\"\" class=\"btn btn-danger\">Xác nhận xóa</a>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div> <!-- End Modal -->\n");
      out.write("\n");
      out.write("            <a href=\"\" class=\"btn-large btn-success pull-right\">Mua hàng</a>\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary btn-large pull-left\">Cập nhật</button>\n");
      out.write("\n");
      out.write("\n");
      out.write("</form>\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
