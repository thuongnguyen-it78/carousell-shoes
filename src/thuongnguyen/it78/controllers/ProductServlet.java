package thuongnguyen.it78.controllers;

import thuongnguyen.it78.daos.ShoesDAO;
import thuongnguyen.it78.models.Shoes;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/product-list")
public class ProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {



    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        ArrayList<Shoes> listShoes = ShoesDAO.getListShoesByGender(1);
        req.setAttribute("listShoes", listShoes);
        req.getRequestDispatcher("/views/shop.jsp").forward(req, res);
    }
}
