/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ha.dev.admin.orderdetail;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import ha.dev.admin.BaseAdminServlet;
import ha.dev.data.dao.Database;
import ha.dev.data.dao.DatabaseDao;
import ha.dev.data.dao.OrderDetailDao;
import ha.dev.data.dao.model.OrderDetail;

/**
 *
 * @author Admin
 */
public class IndexOrderDetailServlet extends BaseAdminServlet {

 
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific erroOr occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//     
      OrderDetailDao orderDetailDao = DatabaseDao.getInstance().getOrderDetailDao();
        List<OrderDetail> orderdetailtList = orderDetailDao.findAll();
        
        request.setAttribute("orderdetailtList", orderdetailtList);
        request.getRequestDispatcher("admin/orderDetail/index.jsp").include(request, response);
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
    }
}
