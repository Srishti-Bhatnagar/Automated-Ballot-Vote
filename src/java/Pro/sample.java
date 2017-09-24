/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Pro;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class sample extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw=response.getWriter();
        String vid=request.getParameter("vid");
        pw.print("<p align=\"center\"><h1>Congratulations!!</h1>");
        pw.print("<p align=\"center\"><h1>Account Created Successfully!!</h1>");
        pw.print("<p align=\"center\"><h2>Your unique Voter's Id is:"+vid+"</h2>");
        pw.print("<p align=\"center\"><h3>You are now our Registered User!</h3>");

        try
        {
        Thread.sleep(5000);
        
        RequestDispatcher rd=request.getRequestDispatcher("index.html");
        rd.forward(request, response);}
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

}
