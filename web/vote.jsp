<%-- 
    Document   : vote
    Created on : 13 Aug, 2016, 12:19:06 PM
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
        HttpSession sess=request.getSession(false);
        if(sess==null)
        {
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");//create rd for sending a request to a resource
            out.println("paji login v kar leya karo");
            rd.include(request, response);//send control with data
        }
        else{
        String st=(String)sess.getAttribute("voter");
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        try
        {
            Connection c=null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Elections","root","");
                PreparedStatement ps=c.prepareStatement("select voters.voting_status,constituency.date_OF_Election from voters,constituency where vid=? and voters.constituency=constituency.constituency");
                ps.setString(1,st);
                String i=" ";
                Date d1=new Date();
                Date d2=new Date();
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {
                     i=rs.getString(1);
                     d1=sdf.parse(rs.getString(2));
                }
                if(!(i.equals("1")) && d1.getDate()==d2.getDate())
                {
                ps=c.prepareStatement("select candidates.name,candidates.partyname from candidates,voters,constituency where voters.vid=? and voters.constituency=constituency.constituency and constituency.CNo=candidates.ConstituencyNo;");
                ps.setString(1,st);
                rs=ps.executeQuery();
                out.print("<form action='vote' method='post'>");
                while(rs.next())
                {
                    out.print("<input type='radio' name='name' required='required' value='"+rs.getString("name")+"'>"+rs.getString("name")+" "+rs.getString("partyname")+"<br>");
                   
                }
                out.print("<input type='submit' value='Cast Vote'>");
                out.print("<input type='hidden' name='vid' value="+st+">");
                out.print("</form>");
                out.print("<a href='Home.jsp'>Home</a><br>");
                out.print("<a href='vote.jsp'>Cast your Vote</a><br>");
                out.print("<a href='edit.jsp'>Edit your Profile</a><br>");
                out.print("<a href='voters.jsp'>Voters List</a><br>");
                out.print("<a href='schedule.jsp'>Schedule Enquiry</a><br>");
                out.print("<a href='result.jsp'>Check Results</a><br>");
                
                out.print("<a href='logout.jsp'>Logout</a>");
      
                }
                else if(i.equals("1"))
                {
                    out.print("<br>Sorry.You have already Cast your Vote");
                    RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
                    rd.include(request, response);
                
                }
                else
                {
                    out.print("<br>Sorry.You cannot Cast Your Vote.There are no Elections in your Constituency Today.Please Check The Schedule.");
                    RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
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
        }}
         %>
       
    </body>
</html>
