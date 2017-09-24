package Pro;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class admEdit extends HttpServlet {
    
        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
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
                    PreparedStatement ps=c.prepareStatement("update constituency set date_of_election=? where state=?;");
                    ps.setString(1,request.getParameter("doe"));
                    ps.setString(2,request.getParameter("key2"));
                   Boolean b=ps.execute();
                
    
  out.print("Date Of Election for "+request.getParameter("key2")+" Updated Successfully.");
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

    
    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String state=request.getParameter("sample");
        out.print("<h2>Change Date of Election in State-'"+state+"'</h2>");
        //out.print(state);
        Date d=new Date();
        //out.print(d);
        int y=d.getYear()+1900;
        int day=d.getDate();
        int m=d.getMonth()+1;
       // out.println("<br>"+y+"<br>");
        //out.println(day+"<br>");
        //out.println(m+"<br>");
        out.print("<form action='admEdit' method='get'>");
//        out.print("<h3>"+state+"</h3><input type='date' name='doe' min='2016-09-22'>");
        if(m<10)
        {
            if(day<10)
                out.print("<input type='date' name='doe' min='"+y+"-0"+m+"-0"+day+"' required='required' >");
            else
                out.print("<input type='date' name='doe' min='"+y+"-0"+m+"-"+day+"' required='required' >");
        }
        else
        out.print("<h3>"+state+"</h3><input type='date' name='doe' min='"+y+"-"+m+"-"+day+"' required='required' >");
        
        out.print("<input type='hidden' name='key2' value='"+state+"'>");
        out.print("<br><br><input type='submit' value='Done'>");
        out.print("</form>");
}
}
