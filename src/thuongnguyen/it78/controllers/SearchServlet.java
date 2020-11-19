package thuongnguyen.it78.controllers;

import com.google.gson.Gson;
import thuongnguyen.it78.daos.ShoesDAO;
import thuongnguyen.it78.models.Shoes;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/search-result")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        // set giá trị trả về là json
        res.setContentType("application/json");

        // lấy ra biến search
        String search = req.getParameter("value");

        // lấy ra arraylist shoes
        ArrayList<Shoes> listShoes = ShoesDAO.getListShoesByGender(1);

        // set return json
        Gson gson = new Gson();

        // return ra list json
        PrintWriter pw = res.getWriter();
        pw.println(gson.toJson(listShoes));
    }
}

