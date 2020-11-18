package thuongnguyen.it78.api;

import com.google.gson.Gson;
import thuongnguyen.it78.daos.ShoesDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/me/change-size")
public class ChangeSizeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int shoesID = Integer.parseInt(req.getParameter("shoesID"));
        int sizeID = Integer.parseInt(req.getParameter("sizeID"));

        int result = ShoesDAO.getIdBySizeAndId(shoesID, sizeID);

        PrintWriter pw = res.getWriter();
        pw.print(result);

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {



    }
}
