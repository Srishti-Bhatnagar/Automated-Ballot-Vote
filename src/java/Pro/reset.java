
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
public class reset extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out=response.getWriter();
            
             try
            {
                Connection c=null;
            try
            {
             Class.forName("com.mysql.jdbc.Driver");
             c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
             PreparedStatement ps=c.prepareStatement("update voters set Voting_Status='0'");
             boolean b=ps.execute();
             ps=c.prepareStatement("update candidates set No_Of_Votes=0");
             b=ps.execute();
             out.print("Database Reset Successfully.");
             RequestDispatcher rd=request.getRequestDispatcher("AdmHome.jsp");
             rd.include(request, response);
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
