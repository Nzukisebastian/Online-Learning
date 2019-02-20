package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.kodejava.example.servlet.SessionCounter;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<html>\n");
      out.write("    <style type=\"text/css\">   \n");
      out.write(" #head{background-color:grey;\n");
      out.write("        font-size:30px;\n");
      out.write("\t\tcolor:white;\n");
      out.write("\t\twidth:100%;\n");
      out.write("\t\theight:50px;\n");
      out.write("\t    position:absolute;\n");
      out.write("        top:2px;\n");
      out.write("left:1px;}\n");
      out.write(" #login{background-color:grey;\n");
      out.write("        font-size:30px;\n");
      out.write("\t\tcolor:blue;\n");
      out.write("\t\twidth:15%;\n");
      out.write("\t\theight:40px;\n");
      out.write("\t    position:absolute;\n");
      out.write("        top:2px;\n");
      out.write("left:80%;}\n");
      out.write(" #count{background-color:white;\n");
      out.write("        font-size:30px;\n");
      out.write("\t\tcolor:red;\n");
      out.write("\t\twidth:15%;\n");
      out.write("\t\theight:50px;\n");
      out.write("\t    position:absolute;\n");
      out.write("        top:50px;\n");
      out.write("left:85%;}\n");
      out.write(" #detail{\n");
      out.write("        font-size:30px;\n");
      out.write("\t\tcolor:blue;\n");
      out.write("\t\t\n");
      out.write("\t    position:absolute;\n");
      out.write("        top:50%;\n");
      out.write("left:0%;}\n");
      out.write(" #online{\n");
      out.write("color:red;\n");
      out.write("position:absolute;\n");
      out.write(" top:40px;\n");
      out.write("left:85%;}\n");
      out.write(" body{background-color:silver;}\n");
      out.write(" img{position:absolute;\n");
      out.write("     top:55px;\n");
      out.write("\t left:40%}\n");
      out.write("\t #ipic{position:absolute;\n");
      out.write("     top:600px;left:30%;}\n");
      out.write("     </style>\n");
      out.write("<head>\n");
      out.write("<title>Session Counter</title>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("   <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div id=\"count\"></div>\n");
      out.write(" ");
SessionCounter counter=(SessionCounter)session.getAttribute(SessionCounter.COUNTER);
      out.write("\n");
      out.write(" <div id=\"online\"><h5>Number of Online user(s):<br>");
      out.print(counter.getActiveSessionNumber());
      out.write("</h5></div>\n");
      out.write("     <div id=\"head\">Welcome to Laikipia university online Learning System.<tr><td><a href=\"validate.jsp\"><div id=\"login\">Login Here</div></a></td></tr></div>\n");
      out.write("   \n");
      out.write("<center><img src=\"lo.png\" width=\"200px\" height=\"200px\" /><br><br><br></center> \n");
      out.write(" <div id='detail'><h5><marquee>Laikipia University transforming technology keep trunk of your Projects.</marquee></h5>\n");
      out.write("Our system is designed to help students to register their projects which they take every year.Students can view past projects,current projects and even upload their project details.<br>supervisors can select students to supervise and comment about their projects.<br>Students can view their comment in their session when they login.<br>Admin approves projects uploaded by students to be valid for supervision by lecturers.  </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
