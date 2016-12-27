package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Category;
import dao.CategoryDAO;

public final class sidebar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>SideBar</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("         \n");
      out.write("        ");
 CategoryDAO categoryDAO = new CategoryDAO(); 
      out.write(" \n");
      out.write(" \n");
      out.write("       <!-- Sidebar ================================================== -->\n");
      out.write("\t<div id=\"sidebar\" class=\"span3\">\n");
      out.write("\t\t<div class=\"well well-small\"><a id=\"myCart\" href=\"product_summary.html\"><img src=\"themes/images/ico-cart.png\" alt=\"cart\">3 Items in your cart  <span class=\"badge badge-warning pull-right\">$155.00</span></a></div>\n");
      out.write("\t\t<ul id=\"sideManu\" class=\"nav nav-tabs nav-stacked\">\n");
      out.write("\t\t\t<li class=\"subMenu open\"><a>Danh Mục</a>\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("                                                                        ");

                                                                            for (Category c : categoryDAO.getListCategory()){
                                                                        
      out.write("\n");
      out.write("                                                                        <li><a class=\"active\" href=\"products.jsp?category=");
      out.print(c.getCategoryID());
      out.write("\"><i class=\"icon-chevron-right\"></i>");
      out.print(c.getCategoryName());
      out.write(" </a></li>\n");
      out.write("                                                                       ");

                                                                           }
                                                                       
      out.write("\n");
      out.write("                                                                        \n");
      out.write("                                                                        \n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t\t<br/>\n");
      out.write("\t\t  <div class=\"thumbnail\">\n");
      out.write("\t\t\t<img src=\"themes/images/products/panasonic.jpg\" alt=\"Bootshop panasonoc New camera\"/>\n");
      out.write("\t\t\t<div class=\"caption\">\n");
      out.write("\t\t\t  <h5>Panasonic</h5>\n");
      out.write("\t\t\t\t<h4 style=\"text-align:center\"><a class=\"btn\" href=\"product_details.html\"> <i class=\"icon-zoom-in\"></i></a> <a class=\"btn\" href=\"#\">Add to <i class=\"icon-shopping-cart\"></i></a> <a class=\"btn btn-primary\" href=\"#\">$222.00</a></h4>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t  </div><br/>\n");
      out.write("\t\t\t<div class=\"thumbnail\">\n");
      out.write("\t\t\t\t<img src=\"themes/images/products/kindle.png\" title=\"Bootshop New Kindel\" alt=\"Bootshop Kindel\">\n");
      out.write("\t\t\t\t<div class=\"caption\">\n");
      out.write("\t\t\t\t  <h5>Kindle</h5>\n");
      out.write("\t\t\t\t    <h4 style=\"text-align:center\"><a class=\"btn\" href=\"product_details.html\"> <i class=\"icon-zoom-in\"></i></a> <a class=\"btn\" href=\"#\">Add to <i class=\"icon-shopping-cart\"></i></a> <a class=\"btn btn-primary\" href=\"#\">$222.00</a></h4>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t  </div><br/>\n");
      out.write("\t\t\t<div class=\"thumbnail\">\n");
      out.write("\t\t\t\t<img src=\"themes/images/payment_methods.png\" title=\"Bootshop Payment Methods\" alt=\"Payments Methods\">\n");
      out.write("\t\t\t\t<div class=\"caption\">\n");
      out.write("\t\t\t\t  <h5>Payment Methods</h5>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t  </div>\n");
      out.write("\t</div>\n");
      out.write("<!-- Sidebar end=============================================== -->\n");
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
