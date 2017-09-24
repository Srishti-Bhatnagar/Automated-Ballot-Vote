package Pro;
import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class voters extends HttpServlet {

    
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        
        out.print("<h1>VOTER'S LIST</h1><br>");
        out.print("<a href='Home.jsp'>Home</a><br>"); 
        out.print("<a href='vote.jsp'>Cast your Vote</a><br>");
        out.print("<a href='edit.jsp'>Edit your Profile</a><br>");
        out.print("<a href='voters.jsp'>Voters List</a><br>");
        out.print("<a href='schedule.jsp'>Schedule Enquiry</a><br>");
        out.print("<a href='result.jsp'>Check Results</a><br>");
        out.print("<a href='logout.jsp'>Logout</a><br>");
        String state="";
        String constituency="";
        String st="";
        try
        {
            Connection c=null;
            try
            {
                    Class.forName("com.mysql.jdbc.Driver");
                    c=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                    if(request.getParameter("option").substring(0,4).equals("full"))
                    {
                        st=request.getParameter("option").substring(4);
                        PreparedStatement ps=c.prepareStatement("select state,constituency from voters where vid=?;");
                        ps.setString(1,request.getParameter("option").substring(4));
                        ResultSet rs=ps.executeQuery();
                        while(rs.next())
                        {
                            state=rs.getString("state");
                            constituency=rs.getString("constituency");
                        }
                    
                    out.print("<form action='voters' method='post'>");
                    out.print("<input type='radio' name='option' required='required' value='"+state+"'>Statewise List &emsp;");
                    out.print("<input type='radio' name='option' value='cons'>ConstituencyWise List&emsp;");
                    out.print("<input type='radio' name='option' value='full"+st+"' checked>Entire List<br>");
                    out.print("<input type='submit' name='search' value='Search'>");
                    out.print("<input type='hidden' name='const' value='"+constituency+"'>");
                    out.print("</form>");
                    ps=c.prepareStatement("select fname,mname,lname,constituency,state from voters order by constituency,state;");
                    rs=ps.executeQuery();
                    out.print("<b>Name&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Constituency&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;State</b><br><br>");
                    while(rs.next())
                    {
                        out.print(rs.getString("fname")+" "+rs.getString("mname")+" "+rs.getString("lname")+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs.getString("constituency")+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs.getString("state")+"<br>");
                        
                    }
        
        
                    }
                    else if(request.getParameter("option").equals("cons"))
                    {
                        constituency=request.getParameter("const");
                        PreparedStatement ps=c.prepareStatement("select state,vid from voters where constituency=?");
                        ps.setString(1,request.getParameter("const"));
                        ResultSet rs=ps.executeQuery();
                        while(rs.next())
                        {
                            state=rs.getString("state");
                            st=rs.getString("vid");
                        }
                            
                    out.print("<form action='voters' method='post'>");
                    out.print("<input type='radio' name='option' required='required' value='"+state+"'>Statewise List &emsp;");
                    out.print("<input type='radio' name='option' value='cons' checked>ConstituencyWise List&emsp;");
                    out.print("<input type='radio' name='option' value='full"+st+"' >Entire List<br>");
                    out.print("<input type='submit' name='search' value='Search'>");
                    out.print("<input type='hidden' name='const' value='"+constituency+"'>");
                    out.print("</form>");
        
                    ps=c.prepareStatement("select fname,mname,lname,constituency,state from voters where constituency=? ");
                    ps.setString(1,request.getParameter("const"));
                    rs=ps.executeQuery();
                    out.print("<b>Name&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Constituency&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;State</b><br><br>");
                    while(rs.next())
                    {
                         out.print(rs.getString("fname")+" "+rs.getString("mname")+" "+rs.getString("lname")+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs.getString("constituency")+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs.getString("state")+"<br>");
                    }
                            
                            
                    }
                    else
                    {
                        state=request.getParameter("option");
                        PreparedStatement ps=c.prepareStatement("select constituency,vid from voters where state=? ");
                        ps.setString(1,request.getParameter("option"));
                        ResultSet rs=ps.executeQuery();
                        while(rs.next())
                        {
                            constituency=rs.getString("constituency");
                            st=rs.getString("vid");
                        }
                    out.print("<form action='voters' method='post'>");
                    out.print("<input type='radio' name='option' required='required' value='"+state+"' checked>Statewise List &emsp;");
                    out.print("<input type='radio' name='option' value='cons' >ConstituencyWise List&emsp;");
                    out.print("<input type='radio' name='option' value='full"+st+"' >Entire List<br>");
                    out.print("<input type='submit' name='search' value='Search'>");
                    out.print("<input type='hidden' name='const' value='"+constituency+"'>");
                    out.print("</form>");
                    ps=c.prepareStatement("select fname,mname,lname,constituency,state from voters where state=?");
                    ps.setString(1,request.getParameter("option"));
                    rs=ps.executeQuery();
                    out.print("<b>Name&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Constituency&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;State</b><br><br>");
                    while(rs.next())
                    {
                          out.print(rs.getString("fname")+" "+rs.getString("mname")+" "+rs.getString("lname")+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs.getString("constituency")+"&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"+rs.getString("state")+"<br>");
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
    

}
