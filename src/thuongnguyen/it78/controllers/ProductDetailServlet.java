package thuongnguyen.it78.controllers;

import thuongnguyen.it78.daos.ShoesDAO;
import thuongnguyen.it78.models.Shoes;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/product-detail/*")
public class ProductDetailServlet  extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String name = req.getPathInfo();
        System.out.println(name);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int shoesId = Integer.parseInt(req.getPathInfo().substring(1));
        Shoes shoes = ShoesDAO.getShoes(shoesId);


//        if(shoes == null) {
//            System.out.println("aye");
//            return;
//        }
//        res.addHeader("Access-Control-Allow-Origin", "localhost:8080");
//        res.addHeader("Access-Control-Allow-Headers", "X-PINGOTHER, Content-Type");
//        res.addHeader("Access-Control-Allow-Credentials", "true");


        req.setAttribute("shoes", shoes);

        req.getRequestDispatcher("/views/shop-details.jsp").forward(req, res);
    }
}
