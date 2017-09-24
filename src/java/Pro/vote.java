
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

public class vote extends HttpServlet {



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
                    PreparedStatement ps=c.prepareStatement("select voting_status from voters where vid=?");
                    ps.setString(1,request.getParameter("vid"));
                    ResultSet rs=ps.executeQuery();
                    while(rs.next())
                    {
                    if(rs.getString(1).equals("1"))
                    {
                        RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
                        rd.forward(request,response);
                    }
                    else
                    {
                    PreparedStatement ps1=c.prepareStatement("update voters set voting_status='1' where vid=?");
                    ps1.setString(1,request.getParameter("vid"));
                    Boolean b=ps1.execute();  
                    ps1=c.prepareStatement("select no_of_votes from candidates where name=?");
                    ps1.setString(1,request.getParameter("name"));
                    ResultSet rs1=ps1.executeQuery();
                    int count=0;
                    while(rs1.next())
                    {
                        count=rs1.getInt(1);
                    }
                    count++;
                    
                    ps1=c.prepareStatement("update candidates set no_of_votes=? where name=?");
                    ps1.setInt(1,count);
                    ps1.setString(2,request.getParameter("name"));
                    b=ps1.execute();
                    out.print("You Have Successfully Cast Your vote.<br><br>");
                    out.print("<form action='Home.jsp'><input type='submit' value='home'></form>");
                    }
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
           
        /*
        
        String st=(String)sess.getAttribute("voter");
        String cons="";
        
        try
        {
            Connection c=null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                PreparedStatement ps=c.prepareStatement("select constituency from voters where vid=?;");
                ps.setString(1,st);
                ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                    cons=rs.getString(1);
                }
                ps=c.prepareStatement("select fname from voters where constituency=?;");
                ps.setString(1,cons);
                rs=ps.executeQuery();
                
                int i=1;
                //out.print("<h3>State &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Constituency &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Voter</h3><br>");
                while(rs.next())
                {
                    out.print(i+". "+rs.getString(1));//+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+rs.getString(2)+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+"<br>");
                    i++;
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
        }*/
 
}
