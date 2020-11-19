package thuongnguyen.it78.api;


import thuongnguyen.it78.models.OrderDetail;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet("/me/cart/*")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String pathName = req.getPathInfo().substring(1);
        System.out.println(pathName);

        if(pathName.equalsIgnoreCase("delete")) {
            int productDetailID = Integer.parseInt(req.getParameter("productDetailID"));

            HashMap mapShoes = (HashMap) req.getSession().getAttribute("cart");

            mapShoes.remove(productDetailID);

            req.getSession().setAttribute("cart", mapShoes);

        }

        if(pathName.equalsIgnoreCase("change")) {
            int productDetailID = Integer.parseInt(req.getParameter("productDetailID"));
            int newQuantity = Integer.parseInt(req.getParameter("newQuantity"));
            System.out.println(productDetailID + " abc " + newQuantity);

            HashMap mapShoes = (HashMap) req.getSession().getAttribute("cart");

            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setQuantity(newQuantity);
            orderDetail.setShoesID(productDetailID);
            mapShoes.put(productDetailID, orderDetail);

            req.getSession().setAttribute("cart", mapShoes);

        }

//        req.getSession().setAttribute("cart", mapShoes);

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {



    }
}
