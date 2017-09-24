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
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Signup extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw=response.getWriter();
         int flag=0;
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        String s=new Date().toString();
        int x=Integer.parseInt(s.substring(24));
        Date d1=new Date();
        d1.setYear((x-18)-1900);
        String st="";
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
                st=rs.getString("State");
                }              
                ps=c.prepareStatement("select * from voters");
                rs=ps.executeQuery();
               
                while(rs.next())
                {
                    if(rs.getString("FatherName").equals(request.getParameter("FthName"))&&rs.getString("MothName").equals(request.getParameter("MthName"))&&rs.getString("FName").equals(request.getParameter("FName"))&&rs.getString("MName").equals(request.getParameter("MName"))&&rs.getString("LName").equals(request.getParameter("LName"))&&rs.getString("DOB").equals(request.getParameter("dob")))
                    {
                        flag++;
                        break;
                    }
                }
                if(flag!=0)
                {
                    RequestDispatcher rd=request.getRequestDispatcher("sign.jsp");
                    pw.println("Sorry! You are already registerd!");
                    rd.include(request,response);
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
        try {
            d2 = sdf.parse(request.getParameter("dob"));
        } catch (ParseException ex) {
            Logger.getLogger(Signup.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(request.getParameter("pass").equals(request.getParameter("repass")) && request.getParameter("pass").length()>=8 &&request.getParameter("pass").length()<=15 && st.equals(request.getParameter("State"))&& (d2.compareTo(d1)<0|| d2.compareTo(d1)==0)&& flag==0 &&(request.getParameter("FName").length()!=1 && request.getParameter("LName").length()!=1 || request.getParameter("FthName").length()!=1 || request.getParameter("MthName").length()!=1 ))
        {
         
        String vid=vId();
       
           
            try
            {
                Connection c=null;
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                    PreparedStatement ps=c.prepareStatement("Insert into Voters values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");           
                    ps.setString(1,vid);
                    ps.setString(2,request.getParameter("pass"));
                    ps.setString(3,request.getParameter("FName"));
                    ps.setString(4,request.getParameter("MName"));
                    ps.setString(5,request.getParameter("LName"));
                    ps.setString(6,request.getParameter("FthName"));
                    ps.setString(7,request.getParameter("dob"));
                    ps.setString(8,request.getParameter("gen"));
                    ps.setString(9,request.getParameter("Add"));
                    ps.setString(10,request.getParameter("Nationality"));
                    ps.setString(11,request.getParameter("State"));
                   // ps.setString(12,request.getParameter("City"));
                    ps.setString(12,request.getParameter("Cname"));
                   // ps.setString(14,request.getParameter("pin"));
                    ps.setString(13,request.getParameter("mail"));
                    ps.setString(14,"0");
                    ps.setString(15,request.getParameter("MthName"));
                    int i=ps.executeUpdate();
                    
                    if(i>0)
                    {
            //RequestDispatcher rd=request.getRequestDispatcher("sample?vid="+vid);
              //          rd.forward(request, response);
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

             pw.print("<p align=\"center\"><h1>Congratulations!!</h1>");
        pw.print("<p align=\"center\"><h1>Account Created Successfully!!</h1>");
        pw.print("<p align=\"center\"><h2>Your unique Voter's Id is:"+vid+"</h2>");
        pw.print("<p align=\"center\"><h3>You are now our Registered User!</h3>");
        pw.print("<form action='index.jsp' method=\"Post\">");
        pw.println("<input type='hidden' name='id' value="+vid+">");
        pw.println("<input type='submit' value='Click To LogIn'>");
        pw.println("</form>");
        
         
        }
        else if(d2.compareTo(d1)>0)
        {
            RequestDispatcher rd=request.getRequestDispatcher("sign.jsp");
            pw.println("Sorry.You have not turned 18 yet.You are not eligible to Vote.");
            rd.include(request,response);
        }
        else if(!(st.equals(request.getParameter("State"))))
        {
            RequestDispatcher rd=request.getRequestDispatcher("sign.jsp");
            pw.println("Sorry.Please Enter correct Pair of State and Constituency.");
            rd.include(request,response);
        }
        
        else
            if(!(request.getParameter("pass").equals(request.getParameter("repass"))))
        {
            RequestDispatcher rd=request.getRequestDispatcher("sign.jsp");
            pw.println("Sorry.Your Password doesn't match.");
            rd.include(request,response);
            
        }
            else if((request.getParameter("FName").length()==1 &&request.getParameter("LName").length()==1))
        {
             RequestDispatcher rd=request.getRequestDispatcher("sign.jsp");
            pw.println("Please enter a valid Full Name.");
            rd.include(request,response);
            
        }
            
        else if(request.getParameter("FthName").length()==1)
        {
             RequestDispatcher rd=request.getRequestDispatcher("sign.jsp");
            pw.println("Please enter a valid Father's Name.");
            rd.include(request,response);
            
        }
        else if(request.getParameter("MthName").length()==1)
        {
             RequestDispatcher rd=request.getRequestDispatcher("sign.jsp");
            pw.println("Please enter a valid Mother's Name.");
            rd.include(request,response);
            
        }
        else if(flag==0)
            {
            RequestDispatcher rd=request.getRequestDispatcher("sign.jsp");
            pw.println("Please enter a Valid Password.(8-15 characters)");
            rd.include(request,response);
            }
        
    }
    String vId()
    {
        String vid=(char)(new Random().nextInt(26)+65)+""+(char)(new Random().nextInt(26)+65)+""+(char)(new Random().nextInt(26)+65)+""+new Random().nextInt(9+1)+new Random().nextInt(9+1)+new Random().nextInt(9+1)+new Random().nextInt(9+1)+new Random().nextInt(9+1)+new Random().nextInt(9+1)+new Random().nextInt(9+1)+"";
        try
        {
            Connection c=null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                PreparedStatement ps=c.prepareStatement("Select * from Voters where VId=?;");
                ps.setString(1,vid);
                ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                    vId();
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
        return vid;
    }
    
    
}
