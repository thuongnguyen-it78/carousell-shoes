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

        // tạo ra một listShoes có id là shoesID
        ArrayList<Shoes> listShoes;

        // filter

        // mặc định thì category trả về là 1 và giới tính là nam
        int gender = 1;
        int category = 1;

        // pagination

        // mặc định là page 1 và số record mỗi dòng là 12
        int page = 1;
        final int recordsPerPage = 12;



        // mặc định lấy ra list shoes bằng gender mặc định
        listShoes = ShoesDAO.getListShoesByGender(gender);

        // lấy ra các tham số truyền vào
        String pageParams = req.getParameter("page");
        String genderParams = req.getParameter("gender");
        String categoryParams = req.getParameter("category");

        // nếu pageParams khác null thì set lại
        if(pageParams != null) page = Integer.parseInt(pageParams);

        // giá trị bắt đầu của pagination
        int begin = (page - 1) * recordsPerPage;

        // nếu giá trị genderParams khác null thì set lại giá trị và list shoes return
        if(genderParams != null) {
            gender = Integer.parseInt(genderParams);
            listShoes = ShoesDAO.getListShoesByGender(gender);
        }

        // nếu category khác null thì set lại giá trị và list shoes return
        if(categoryParams != null) {
            category = Integer.parseInt(categoryParams);
            listShoes = ShoesDAO.getListShoesByCategoryAndGender(category, gender, begin, recordsPerPage);
        }

//        int noOfRecords = listShoes.size() + 1;
//        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);

        // return
        req.setAttribute("listShoes", listShoes);
        req.getRequestDispatcher("/views/shop.jsp").forward(req, res);
    }
}
