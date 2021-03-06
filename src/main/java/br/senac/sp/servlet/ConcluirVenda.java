/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.servlet;

import br.senac.sp.dao.VendasDAO;
import br.senac.sp.entidade.Venda;
import java.io.IOException;
import java.io.PrintWriter;
import br.senac.sp.servlet.ListarClienteVenda;
import static br.senac.sp.servlet.ListarClienteVenda.getFILIAL;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author diego
 */
public class ConcluirVenda extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
                             
      String cpf = ListarClienteVenda.getCPF();
      double desconto = Double.parseDouble(request.getParameter("Desconto"));
      double total = Double.parseDouble(request.getParameter("TotalVenda"));
      String data = "";
      String usuario = "ANONIMO";
       String filial = Integer.toString(getFILIAL());
      
     Venda vnd = new Venda (filial,usuario, cpf, total, data, desconto );
      
     int ID = VendasDAO.Concluir(vnd);
       request.setAttribute("ID", ID);
     RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/protegido/sucesso.jsp");
            dispatcher.forward(request,response);
      
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
