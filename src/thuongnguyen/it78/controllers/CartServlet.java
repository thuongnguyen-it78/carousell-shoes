package thuongnguyen.it78.controllers;

import org.apache.catalina.servlets.DefaultServlet;
import thuongnguyen.it78.models.OrderDetail;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/me/cart")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ArrayList listCart = (ArrayList) req.getSession().getAttribute("cart");
        int productID = Integer.parseInt(req.getParameter("productID"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));

        OrderDetail orderDetail = new OrderDetail();

        orderDetail.setShoesID(productID);
        orderDetail.setQuantity(quantity);

        listCart.add(orderDetail);
        req.getSession().setAttribute("cart", listCart);



//        PrintWriter pw = res.getWriter();
//        String s = String.format("%s \t %s", productID, quantity);
//        pw.print(s);



    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/views/shopping-cart.jsp").forward(req, res);



    }
}
