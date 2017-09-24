    package Pro;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Index extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw=response.getWriter();
        HttpSession ses=request.getSession();
        ses.setAttribute("id",request.getParameter("id"));
        try
        {
            Connection c=null;
            try
            {
             Class.forName("com.mysql.jdbc.Driver");
             c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
             PreparedStatement ps=c.prepareStatement("select * from Voters where VId=? and Password=?");
             ps.setString(1,request.getParameter("id"));
             ps.setString(2,request.getParameter("pass"));
             ResultSet rs=ps.executeQuery();
             if(rs.next())
             {
                 HttpSession session=request.getSession();
                 session.setAttribute("voter",request.getParameter("id"));
          
                 RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
                 if(rs.getString("MName")!="NULL")
                 {
                        pw.println("<h1>Welcome<br>"+rs.getString("FName")+" "+rs.getString("MName")+" "+rs.getString("LName")+"!</h1>");
                        rd.include(request, response);
                 }
                 else
                 {
                     pw.println("<h1><br>Welcome"+rs.getString("FName")+" "+rs.getString("LName")+"!</h1>");
                     rd.include(request, response);
                 }
             }
                 
             else
             {
                 RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                 pw.println("<p align=\"center\">Incoreect Id or Password.\nPlease try again.");
                 rd.include(request, response);
             
             }
            }
            finally
            {
                c.close();
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }

}
