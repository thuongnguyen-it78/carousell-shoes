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
import java.util.HashMap;

@WebServlet("/me/cart")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HashMap mapCart = (HashMap) req.getSession().getAttribute("cart");
        int productID = Integer.parseInt(req.getParameter("productID"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));

        OrderDetail orderDetail = new OrderDetail();

        orderDetail.setShoesID(productID);
        orderDetail.setQuantity(quantity);

        boolean isHave = mapCart.containsKey(productID);

        if(!isHave) mapCart.put(productID, orderDetail);
        else {
            OrderDetail od = (OrderDetail) mapCart.get(productID);
            od.setQuantity(od.getQuantity() + quantity);
            mapCart.put(productID, od);
        }

        System.out.println(mapCart);
        req.getSession().setAttribute("cart", mapCart);



        PrintWriter pw = res.getWriter();
        pw.print(mapCart.size());



    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/views/shopping-cart.jsp").forward(req, res);



    }
}
