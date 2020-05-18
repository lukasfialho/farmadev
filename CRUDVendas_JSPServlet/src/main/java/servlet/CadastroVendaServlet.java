/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import DAO.VendaDAO;
import entidade.Venda;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rapha
 */
public class CadastroVendaServlet extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Empty
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int IDVenda = request.getIntHeader("IDVenda");
        int CPFCliente = request.getIntHeader("CPFCliente");
        double desconto = Double.parseDouble(request.getParameter("desconto"));
        double total = Double.parseDouble(request.getParameter("total"));
        String dataVenda = request.getParameter("dataVenda");
        String usuario = request.getParameter("usuario");
        
        Venda venda = new Venda(IDVenda,CPFCliente, desconto, total, dataVenda, usuario);
        boolean ok = VendaDAO.cadastrarVenda(venda);
        PrintWriter out = response.getWriter();

        String url = "";
        if (ok) {
            url = "/sucesso.jsp";
        } else {
            url = "/erro.jsp";
        }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request,response);
       

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
