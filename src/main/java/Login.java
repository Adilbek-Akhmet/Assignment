import eCommerce.Database;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "Login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(Database.users.containsKey(username) && Database.users.get(username).equals(password)) {
            HttpSession newSession = request.getSession(true);
            Integer counter = 0;
            Integer count = (Integer)newSession.getAttribute("counter");

            if(count != null) {
                counter = count.intValue() + 1;

            }
            newSession.setAttribute("counter", counter);
            Cookie uname = new Cookie("username", username);
            Cookie pass = new Cookie("password", password);

            uname.setMaxAge(60*60*10);
            pass.setMaxAge(60*60*10);

            response.addCookie(uname);
            response.addCookie(pass);


            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("register.jsp");
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
