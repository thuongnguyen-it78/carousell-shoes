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
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        // mặc định thì shoesID = 1
        int shoesDetailID = 1;

        // nếu tham số gửi lên khác null thì gán lại shoesID
        if(req.getPathInfo() != null) shoesDetailID = Integer.parseInt(req.getPathInfo().substring(1));

        // lấy ra shoesDetail bằng shoesDetailID
        Shoes shoes = ShoesDAO.getShoes(shoesDetailID);

        // return
        req.setAttribute("shoes", shoes);
        req.getRequestDispatcher("/views/shop-details.jsp").forward(req, res);
    }
}
