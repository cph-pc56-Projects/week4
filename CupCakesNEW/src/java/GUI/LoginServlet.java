/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI;

import Model.LoginError;
import Model.ModelFacade;
import Model.UserDetails;
import data.DataMapper;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author trez__000
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        
        
        
        try {
            response.setContentType("text/html;charset=UTF-8");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            DataMapper dm = new DataMapper();
            UserDetails user = dm.getUserDetails(username);
            String nameUser = user.getUsername();
            //String balance = Integer.toString(user.getBalance());
            int balance = user.getBalance();
            request.getSession().setAttribute("nameUser", nameUser);
            request.getSession().setAttribute("balance", balance);
            
            ModelFacade.validate(username, password);            
            request.getRequestDispatcher("/shop.jsp").forward(request, response);
        } catch (LoginError ex) {
            request.setAttribute("error", "login");            
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } catch (SQLException x) {
            System.out.println("Sth wrong with user query");
            System.out.println(x);
        }
        
//        private void forward(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//            getServletContext().getRequestDispatcher(url).forward(request, response);
//        }
        
        
        
        
        
        
        
              
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    

}
