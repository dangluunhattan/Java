package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title>Register</title>\n");
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
      out.write("     <script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\"  type=\"text/javascript\"></script>        \n");
      out.write("    <script type=\"text/javascript\">             \n");
      out.write("        $(document).ready(function () {                 \n");
      out.write("            var x_timer;                 \n");
      out.write("            $(\"#email\").keyup(function (e) {                 \n");
      out.write("                clearTimeout(x_timer);                       \n");
      out.write("                var user_name = $(this).val();                  \n");
      out.write("                x_timer = setTimeout(function () {                   \n");
      out.write("                    check_username_ajax(user_name);         \n");
      out.write("                }, 1000);                   \n");
      out.write("            });                \n");
      out.write("            function check_username_ajax(username) {           \n");
      out.write("                $(\"#user-result\").html('<img src=\"upload/ajax-loader.gif\" />');         \n");
      out.write("                $.post('CheckEmail', {'username': username}, function (data) {                 \n");
      out.write("                    $(\"#user-result\").html(data);            \n");
      out.write("                });              \n");
      out.write("            }         \n");
      out.write("        });         \n");
      out.write("     </script>\n");
      out.write("  </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <div id=\"mainBody\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t<div class=\"row\">\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar.jsp", out, false);
      out.write("\n");
      out.write("\t<div class=\"span9\">\t\n");
      out.write("\t\t\t  \t\t\n");
      out.write("    <ul class=\"breadcrumb\">\n");
      out.write("        <li><a href=\"http://localhost:8080/webproduct/\">Trang chủ</a> <span class=\"divider\">/</span></li>\n");
      out.write("        <li><a href=\"http://localhost:8080/webproduct/user/login\">Đăng nhập</a> <span class=\"divider\">/</span></li>\n");
      out.write("        <li class=\"active\">Đăng ký</li>\n");
      out.write("    </ul>\n");
      out.write("    <h3>ĐĂNG KÝ</h3>  \n");
      out.write("    <div class=\"well\">\n");
      out.write("    \n");
      out.write("    <!-- <div class=\"alert alert-info fade in\">\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>\n");
      out.write("        <strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s\n");
      out.write("     </div>\n");
      out.write("    <div class=\"alert fade in\">\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>\n");
      out.write("        <strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s\n");
      out.write("     </div>\n");
      out.write("     <div class=\"alert alert-block alert-error fade in\">\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>\n");
      out.write("        <strong>Lorem Ipsum is simply</strong> dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s\n");
      out.write("     </div>  -->\n");
      out.write("        \n");
      out.write("<!--    <form class=\"form-horizontal\" method=\"post\" action=\"UsersServlet\" >\n");
      out.write("        <h4>Đăng ký thành viên</h4>\n");
      out.write("       <div class=\"alert alert-info fade in\">\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>\n");
      out.write("        <strong>Ghi chú:</strong> Không được để trống nội dung phía dưới\n");
      out.write("     </div>\n");
      out.write("     <hr>\n");
      out.write("     <div class=\"control-group\">\n");
      out.write("            <label class=\"control-label\" for=\"inputFname1\">Họ tên: <sup>*</sup></label>\n");
      out.write("            <div class=\"controls\">\n");
      out.write("              <input type=\"text\" class=\"input\" id=\"name\" name=\"name\" value=\"\">\n");
      out.write("              <div class=\"clear\"></div>\n");
      out.write("              <div class=\"error\" style=\"color: #e74c3c;\" id=\"name_error\"></div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("        <div class=\"control-group\">\n");
      out.write("        <label class=\"control-label\" for=\"input_email\">Email: <sup>*</sup></label>\n");
      out.write("        <div class=\"controls\">\n");
      out.write("          <input type=\"text\" class=\"input\" id=\"email\" name=\"email\" value=\"\">\n");
      out.write("          <span id=\"user-result\"></span>\n");
      out.write("          <div class=\"clear\"></div>\n");
      out.write("          <div class=\"error\" style=\"color: #e74c3c;\" id=\"email_error\"></div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"control-group\">\n");
      out.write("        <label class=\"control-label\" for=\"inputPassword1\">Mật khẩu: <sup>*</sup></label>\n");
      out.write("        <div class=\"controls\">\n");
      out.write("          <input type=\"password\" class=\"input\" id=\"password\" name=\"password\">\n");
      out.write("          <div class=\"clear\"></div>\n");
      out.write("          <div class=\"error\" style=\"color: #e74c3c;\" id=\"password_error\"></div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"control-group\">\n");
      out.write("        <label class=\"control-label\" for=\"inputPassword1\">Nhập lại mật khẩu: <sup>*</sup></label>\n");
      out.write("        <div class=\"controls\">\n");
      out.write("          <input type=\"password\" class=\"input\" id=\"re_password\" name=\"re_password\">\n");
      out.write("          <div class=\"clear\"></div>\n");
      out.write("          <div class=\"error\" style=\"color: #e74c3c;\" id=\"re_password_error\"></div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("        \n");
      out.write("         <div class=\"control-group\">\n");
      out.write("            <label class=\"control-label\" for=\"inputLnam\">Số điện thoại: <sup>*</sup></label>\n");
      out.write("            <div class=\"controls\">\n");
      out.write("              <input type=\"text\" class=\"input\" id=\"phone\" name=\"phone\" value=\"\">\n");
      out.write("              <div class=\"clear\"></div>\n");
      out.write("              <div class=\"error\" style=\"color: #e74c3c;\" id=\"phone_error\"></div>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("         <div class=\"control-group\">\n");
      out.write("            <label class=\"control-label\" for=\"inputLnam\">Địa chỉ: <sup>*</sup></label>\n");
      out.write("            <div class=\"controls\">\n");
      out.write("              <textarea class=\"input\" id=\"address\" name=\"address\"></textarea>\n");
      out.write("              <div class=\"clear\"></div>\n");
      out.write("              <div class=\"error\" style=\"color: #e74c3c;\" id=\"address_error\"></div>\n");
      out.write("            </div>\n");
      out.write("         </div>     \n");
      out.write("    <div class=\"control-group\">\n");
      out.write("            <div class=\"controls\">\n");
      out.write("                <input type=\"hidden\" value=\"insert\" name=\"command\">\n");
      out.write("                 <input type=\"submit\" value=\"Register\"> \n");
      out.write("            </div>\n");
      out.write("        </div>      \n");
      out.write("    </form>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container\">\n");
      out.write("                <div class=\"account\">\n");
      out.write("                    <h2 class=\"account-in\">Register</h2>\n");
      out.write("                    <form action=\"UsersServlet\" method=\"POST\">\n");
      out.write("                        <div>\n");
      out.write("                            <span class=\"word\">Name *</span>\n");
      out.write("                            <input type=\"text\" name=\"name\" id=\"name\">\n");
      out.write("                           \n");
      out.write("                        </div> \t\n");
      out.write("                        <div>\n");
      out.write("                            <span class=\"word\">Email *</span>\n");
      out.write("                            <input type=\"text\" name=\"email\" id=\"email\">\n");
      out.write("                            <span id=\"user-result\"></span>\n");
      out.write("                        </div> \t\n");
      out.write("                        <div> \n");
      out.write("                            <span class=\"word\">Password *</span>\n");
      out.write("                            <input type=\"password\" name=\"password\">\n");
      out.write("                            <span></span>\n");
      out.write("                        </div>\t\t\t\n");
      out.write("                        <input type=\"hidden\" value=\"insert\" name=\"command\">\n");
      out.write("                        <input type=\"submit\" value=\"Register\"> \n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("    \n");
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
