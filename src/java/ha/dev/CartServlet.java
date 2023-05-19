/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ha.dev;
import ha.dev.data.dao.model.OrderDetailSession;
import ha.dev.data.dao.DatabaseDao;
import ha.dev.data.dao.ProductDao;
import ha.dev.data.dao.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class CartServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CartServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
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
          HttpSession session = request.getSession();
        List<OrderDetailSession> cart = (List<OrderDetailSession>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }
        request.setAttribute("cart", cart);
        request.setAttribute("total", total(cart));
        request.getRequestDispatcher("cart.jsp").include(request, response);
        
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
          String action = request.getParameter("action");
        switch (action) {
            case "create":
                createOrder(request, response);
                break;
            case "update":
                updateOrder(request, response);
                break;
            case "delete":
                deleteOrder(request, response);
                break;

            default:
                throw new AssertionError();
        }
    }

    private void updateCart(HttpSession session, List<OrderDetailSession> cart, OrderDetailSession find, int value) {
        for (OrderDetailSession ods : cart) {
            if (ods.getProductId() == find.getProductId()) {
                ods.setQuantity(value);
                if (ods.getQuantity() < 1) {
                    ods.setQuantity(1);
                }
            }
        }
        session.setAttribute("cart", cart);
    }

    private OrderDetailSession find(List<OrderDetailSession> cart, int productId) {
        for (OrderDetailSession ods : cart) {
            if (ods.getProductId() == productId) {
                return ods;
            }
        }
        return null;
    }

    private void createOrder(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        Product product = productDao.find(productId);

        OrderDetailSession orderDetailSession = new OrderDetailSession(productId, product.getName(), product.getImage(), quantity, product.getPrice() );
        List<OrderDetailSession> cart = (List<OrderDetailSession>) session.getAttribute("cart");

        if (cart == null) {
//            tao session
            cart = new ArrayList<>();
            cart.add(orderDetailSession);

        } else {
//            tim kiem san pham da co trong gio hang chua
            OrderDetailSession find = find(cart, orderDetailSession.getProductId());
            if (find == null) {
// san pham chua co trong gio hang
                cart.add(orderDetailSession);

            } else {
                // san pham da co thuc hien cap nhat so luong
                updateCart(session, cart, find, find.getQuantity() + quantity);
            }
        }
        session.setAttribute("cart", cart);
        response.sendRedirect("CartServlet");
    }

    private void updateOrder(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        List<OrderDetailSession> cart = (List<OrderDetailSession>) session.getAttribute("cart");
        OrderDetailSession find = find(cart, productId);

        updateCart(session, cart, find, find.getQuantity() + quantity);
        response.sendRedirect("CartServlet");
    }

    private int total(List<OrderDetailSession> cart) {
        int sum = 0;
        for (OrderDetailSession ods : cart) {
            sum += ods.getProductPrice() * ods.getQuantity();
        }
        return sum;
    }

    private void deleteOrder(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        int productId = Integer.parseInt(request.getParameter("productId"));
        List<OrderDetailSession> cart = (List<OrderDetailSession>) session.getAttribute("cart");

        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getProductId() != productId) {
                
            }else {
                cart.remove(i);
            }
            response.sendRedirect("CartServlet");
            session.setAttribute("cart", cart);
        }
    }
        
}
