
package Pro;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class login extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        if(request.getParameter("uname").equals("eleadm") && request.getParameter("pass").equals("admn01"))
        {
            HttpSession session=request.getSession();
                 session.setAttribute("Admin","ADMIN");
            RequestDispatcher rd=request.getRequestDispatcher("AdmHome.jsp");
            rd.forward(request, response);
        }
        else
        {
            out.print("WRONG USERNAME/PASSWORD.<br>UNAUTHORIZED ATTEMPT TO LOGIN.");
           
        
        }
    }

}
