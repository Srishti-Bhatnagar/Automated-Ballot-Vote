package Pro;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class result extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        compute();
        try
        {
            Connection c=null;
            try
            {
                 Class.forName("com.mysql.jdbc.Driver");
                   c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                   PreparedStatement ps=c.prepareStatement("select partyname,count(consname) from results group by partyname");
                   ResultSet rs=ps.executeQuery();
                   while(rs.next())
                   {
                       out.print(rs.getString(1)+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs.getString(2)+"<br>");
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
void compute()
{
    try
    {
        Connection c=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
            PreparedStatement ps=c.prepareStatement("select name,partyname,max(no_OF_Votes),constituency from candidates,constituency where candidates.constituencyno=constituency.cno group by constituencyno;");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                PreparedStatement ps1=c.prepareStatement("insert into results values(?,?,?)");
                ps1.setString(1,rs.getString("name"));
                ps1.setString(2,rs.getString("partyname"));
                ps1.setString(3,rs.getString("constituency"));
                int i=ps1.executeUpdate();
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
