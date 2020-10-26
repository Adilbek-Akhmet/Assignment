import eCommerce.Database;
import eCommerce.Products;
import eCommerce.Smartphone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

@WebServlet(name = "Shopping Cart")
public class ShoppingCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html; charset=utf-8");

        PrintWriter out = response.getWriter();
        request.getSession().setMaxInactiveInterval(60);

        try {


            int counter = (int) request.getSession().getAttribute("counter");
            out.println("<html><head><title>Session Management</title></head><body>");
            out.println("<b> Creation time of the Session: <b>" + new Date(request.getSession().getCreationTime()) + "<br>");
            out.println("<b> Last access time: <b>" + new Date(request.getSession().getLastAccessedTime()) + "<br>");

            out.println("Number of visits " + (++counter));


            out.println("<button><a href='index.jsp'>Confirm</a></button>");

            out.println("</body></html>");
        } finally {
            out.close();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
