package Pro;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class check extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session=request.getSession(false);
        try (PrintWriter out = response.getWriter()) 
        {
            RequestDispatcher rd;
            if(session==null)
            {
                rd=request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
            else
            {
                session.invalidate();
                rd=request.getRequestDispatcher("index.jsp");
                rd.include(request, response);
            }
        }
    }

}
