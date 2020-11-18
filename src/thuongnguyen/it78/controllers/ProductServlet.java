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
import java.util.List;

@WebServlet("/product-list")
public class ProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {



    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        ArrayList<Shoes> listShoes;
        // Filter
        int gender = 1;
        int category = 1;

        // Pagination
        int page = 1;
        final int recordsPerPage = 12;



        // default
        listShoes = ShoesDAO.getListShoesByGender(gender);

        String pageParams = req.getParameter("page");
        String genderParams = req.getParameter("gender");
        String categoryParams = req.getParameter("category");

        if(pageParams != null) page = Integer.parseInt(pageParams);
        int begin = (page - 1) * recordsPerPage;



        if(genderParams != null) {
            gender = Integer.parseInt(genderParams);
            listShoes = ShoesDAO.getListShoesByGender(gender);
        }

        if(categoryParams != null) {
            category = Integer.parseInt(categoryParams);
            listShoes = ShoesDAO.getListShoesByCategoryAndGender(category, gender, begin, recordsPerPage);

        }

//        int noOfRecords = listShoes.size() + 1;
//        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);


        System.out.println(listShoes);

        req.setAttribute("listShoes", listShoes);
        req.getRequestDispatcher("/views/shop.jsp").forward(req, res);
    }
}
