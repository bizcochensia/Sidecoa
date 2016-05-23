/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.usuarioModel;
import entidades.Usuario;
import Clases.EscribeFichero;
/**
 *
 * @author Lenovo
 */
public class solicitud extends HttpServlet {

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
        usuarioModel cp = new usuarioModel();
        
       
                boolean estatus = false;
        try {
            EscribeFichero.escribe();
            estatus = cp.agregarUsuario(new Usuario(request.getParameter("nombre"), request.getParameter("apellidoP"), 
                    request.getParameter("apellidoM"), request.getParameter("tel"), request.getParameter("cel"),
                    request.getParameter("curp"), Integer.parseInt(request.getParameter("ine"))),Integer.parseInt(request.getParameter("dpto"))
                   
            );
            
            } catch (NumberFormatException numberFormatException) {
           
        }
                if(estatus){
                    System.out.println("Registro Completo");
                }
                else {
                    System.out.println("Registro Incompleto");
                }
                
        
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
