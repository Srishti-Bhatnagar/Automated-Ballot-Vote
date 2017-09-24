
package Pro;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Edit extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out=response.getWriter();
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
            String s=new Date().toString();
            int x=Integer.parseInt(s.substring(24));
            Date d1=new Date();
            d1.setYear((x-18)-1900);
            String str="";
            try
            {
                Connection c=null;
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                    PreparedStatement ps=c.prepareStatement("select state from constituency where constituency=?;");
                    ps.setString(1,request.getParameter("Cname"));
                    ResultSet rs=ps.executeQuery();
                    if(rs.next())
                    {
                        str=rs.getString("State");
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
            Date d2=new Date();
            try 
            {
                d2 = sdf.parse(request.getParameter("dob"));
            }
            catch (ParseException ex) 
            {
                ex.printStackTrace();
            }
            if(request.getParameter("pass").equals(request.getParameter("repass")) && request.getParameter("pass").length()==8 && str.equals(request.getParameter("State"))&& (d2.compareTo(d1)<0|| d2.compareTo(d1)==0) )
            {
                HttpSession sess=request.getSession(false);
                if(sess==null)
                {
                    RequestDispatcher rd;//create rd for sending a request to a resource
                    rd = request.getRequestDispatcher("index.jsp");
                    out.println("paji login v kar leya karo");
                    rd.include(request, response);//send control with data
                }
                String st=(String)sess.getAttribute("voter");
                try
                {
                    Connection c=null;
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                        PreparedStatement ps=c.prepareStatement("select * from voters where vid=?;");
                        ps.setString(1,st);
                        ResultSet rs=ps.executeQuery();
                        while(rs.next())
                        {   
                            PreparedStatement ps1=c.prepareStatement("update voters set fname=?,mname=?,lname=?,fathername=?,dob=?,gender=?,address=?,nationality=?,state=?,constituency=?,e_mail=?,password=?,mothname=? where vid=?");
                            ps1.setString(1,request.getParameter("FName"));
                            ps1.setString(2,request.getParameter("MName"));
                            ps1.setString(3,request.getParameter("LName"));
                            ps1.setString(4,request.getParameter("FthName"));
                            ps1.setString(5,request.getParameter("dob"));
                            ps1.setString(6,request.getParameter("gen"));
                            ps1.setString(7,request.getParameter("Add"));
                            ps1.setString(8,request.getParameter("Nationality"));
                            ps1.setString(9,request.getParameter("State"));
                            ps1.setString(10,request.getParameter("Cname"));
                            ps1.setString(11,request.getParameter("mail"));
                            ps1.setString(12,request.getParameter("pass"));
                            ps1.setString(13,request.getParameter("MthName"));
                            ps1.setString(14,st);
                            
                            Boolean b=ps1.execute();
                        }
                        out.print("Profile Edited Successfully!!");
                        RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
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
            else if(d2.compareTo(d1)>0)
            {
                RequestDispatcher rd=request.getRequestDispatcher("edit.jsp");
                out.println("Please Enter a valid Date Of Birth(you should be 18 yrs of age.)<br>");
                rd.include(request,response);
            }
            else if(!(str.equals(request.getParameter("State"))))
            {
                RequestDispatcher rd=request.getRequestDispatcher("edit.jsp");
                out.println("Sorry.Please Enter correct Pair of State and Constituency.<br>");
                rd.include(request,response);
            }
            else if(!(request.getParameter("pass").equals(request.getParameter("repass"))))
            {
                RequestDispatcher rd=request.getRequestDispatcher("edit.jsp");
                out.println("Sorry.Your Password doesn't match");
                rd.include(request,response);
            }
            else
            {
                RequestDispatcher rd=request.getRequestDispatcher("edit.jsp");
                out.println("Please enter a Valid Password.(8 characters)<br>");
               rd.include(request,response);
            }
        
            
    }
}
