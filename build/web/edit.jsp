<%-- 
    Document   : edit
    Created on : 14 Aug, 2016, 1:24:13 PM
    Author     : hp pc
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <% 
        //out.print("edit<br>");\
        HttpSession sess=request.getSession(false);
        if(sess==null)
        {
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");//create rd for sending a request to a resource
            out.println("paji login v kar leya karo");
            rd.include(request, response);//send control with data
        }
        else
        {
            String st=(String)sess.getAttribute("voter");
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
            String s=new Date().toString();
            int x=Integer.parseInt(s.substring(24));
            Date d1=new Date();
            d1.setYear((x-18)-1900);
            Date d2=new Date();
            try
            {
                Connection c=null;
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                    PreparedStatement ps=c.prepareStatement("select date_of_election from constituency,voters where constituency.constituency=voters.constituency and voters.vid=?;");
                    ps.setString(1,st);
                    ResultSet rs=ps.executeQuery();
                    if(rs.next())
                    {
                        d2=sdf.parse(rs.getString("date_of_election"));
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
            if(d2.getDate()-d1.getDate()!=1 && d2.getMonth()-d1.getMonth()!=1)
            {
                 RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");//create rd for sending a request to a resource
                 out.println("Elections are Already Scheduled.You cannot change your profile right Now.");
                 rd.include(request, response);  
            }
                else
                {
                    out.print("<a href='Home.jsp'>Home</a><br>");
        out.print("<a href='vote.jsp'>Cast your Vote</a><br>");
        out.print("<a href='edit.jsp'>Edit your Profile</a><br>");
        out.print("<a href='voters.jsp'>Voters List</a><br>");
        out.print("<a href='schedule.jsp'>Schedule Enquiry</a><br>");
        out.print("<a href='result.jsp'>Check Results</a><br>");
        
        out.print("<a href='logout.jsp'>Logout</a><br><br><br>");
        out.print("<h1>EDIT YOUR PROFILE:</h1>");
       try
        {
               Connection c=null;
               try
               {
                   Class.forName("com.mysql.jdbc.Driver");
                   c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                   PreparedStatement ps=c.prepareStatement("select * from voters where vid=?");
                   ps.setString(1,st);
                   ResultSet rs=ps.executeQuery();
                   while(rs.next())
                   {
                       out.print("<form action='Edit' method='Post'>");
                       out.print("<input type='text' name='FName' value='"+rs.getString("fname")+"' pattern='[A-Za-z]+' title='Please use alphabets only!' required='required' >&emsp;&emsp;&emsp;&emsp;");
                       out.print("<input type='text' name='MName' value='"+rs.getString("mname")+"' pattern='[A-Za-z]+' title='Please use alphabets only!' >&emsp;&emsp;&emsp;&emsp;");
                       out.print("<input type='text' name='LName' value='"+rs.getString("lname")+"' pattern='[A-Za-z]+' title='Please use alphabets only!' required='required' > <br> <br> <br> &emsp; &emsp; &emsp; &emsp; &emsp; &ensp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;");
                       out.print("<input type='text' name='FthName' value='"+rs.getString("fathername")+"' pattern='[A-Za-z ]+' title='Please use alphabets only!' required='required' > <br> <br> <br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;");
                       out.print("<input type='text' name='MthName' value='"+rs.getString("mothname")+"' pattern='[A-Za-z ]+' title='Please use alphabets only!' required='required' > <br> <br> <br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;");
                       out.print("Date Of Birth:&emsp;&emsp;");
                       out.print("<input type='date' name='dob' value='"+rs.getString("dob")+"' required='required'><br> <br> <br> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;");
                       out.print("Gender:&emsp;&emsp;");
                       if(rs.getString("gender").equals("F"))
                       {
                           out.print("<input type='radio' name= 'gen' value='M' required='required'> Male <br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;");
                           out.print("<input type='radio' name= 'gen' value = 'F' checked='checked'> Female <br> <br> <br> &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &ensp; &nbsp; &emsp; &emsp; &emsp; &emsp;");
                       
                       }
                       else
                       {
                           out.print("<input type='radio' name= 'gen' value='M' checked='checked' required='required'> Male <br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;");
                           out.print("<input type='radio' name= 'gen' value = 'F' > Female <br> <br> <br> &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &ensp; &nbsp; &emsp; &emsp; &emsp; &emsp;");
                       
                       }
                       out.print("<input type='text' name='Add' value='"+rs.getString("address")+"' pattern='[A-Za-z0-9\0 ,-./]+' title='Please use alphabets,digits,',','/','.','-' only!' required > <br> <br> <br>");
                       out.print("<select name='Nationality' required='required'>");
                       if(rs.getString("nationality").equals("Indian"))
                       {
                            out.print("<option value='"+rs.getString("nationality")+"'>"+rs.getString("nationality")+"</option>");
                            out.print("<option value='NRI'>NRI</option>");
                       }
                       else
                       {
                            out.print("<option value='"+rs.getString("nationality")+"'>"+rs.getString("nationality")+"</option>");
                            out.print("<option value='Indian'>Indian</option>");
                       }
                       out.print("</select>&emsp;&emsp;&emsp;&emsp;");
                       out.print("<select name='State' required='required'>");
                       out.print("<option value='"+rs.getString("state")+"'>"+rs.getString("state")+"</option>");
                       PreparedStatement ps1=c.prepareStatement("select DISTINCT(state) from constituency;");
                       ResultSet rs1=ps1.executeQuery();
                                while(rs1.next())
                                {
                                    out.print("<option value='"+rs1.getString("state")+"'>"+rs1.getString("state")+"</option>");
                                }
                            
                        out.print("></select>&emsp;&emsp;&emsp;&emsp;");
                        out.print("<select name='Cname' required='required'>");
                        out.print("<option value='"+rs.getString("constituency")+"'>"+rs.getString("constituency")+"</option>");
                        PreparedStatement ps2=c.prepareStatement("select constituency from constituency;");
                        ResultSet rs2=ps2.executeQuery();
                    
                    while(rs2.next())
                    {
                           
                        out.print("<option value='"+rs2.getString(1)+"'>"+rs2.getString(1)+"</option>");
                       
                    }
     
                    
                
            out.print("</select><br><br><br>");
            out.print("<input type='email' name='mail' value='"+rs.getString("E_Mail")+"'><br><br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;");
            out.print("Enter Password:&ensp;<input type='password' name='pass' value='"+rs.getString("password")+"' required='required'>* minimum 8 characters<br><br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&ensp;");
            out.print("Re-Enter Password:&ensp;<input type='password' name='repass' value='"+rs.getString("password")+"' required ><br><br><br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;");
            out.print("<input type='submit' name='submit' value='Update'>");
            out.print("</form>");
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
     %>
    </body>
</html>
