/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;
import dao.UsersDAO;
import java.io.IOException;
import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 


/**
 *
 * @author TAN
 */
public class CheckEmail extends HttpServlet {
    
     UsersDAO usersDAO = new UsersDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (usersDAO.checkEmail(request.getParameter("username"))) {
//          response.getWriter().write("<img src=\"upload/not-available.png\" />");
            response.getWriter().write("Not OK");
        } else {
//             response.getWriter().write("<img src=\"upload/available.png\" />");
                response.getWriter().write("OK");
        }

    }
}