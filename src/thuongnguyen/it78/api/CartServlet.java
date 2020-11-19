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
        // lấy ra giá trị :params
        String pathName = req.getPathInfo().substring(1);

        // nếu params là delete thì chạy delete
        if(pathName.equalsIgnoreCase("delete")) {

            // lấy ra giá trị productDetailID
            int productDetailID = Integer.parseInt(req.getParameter("productDetailID"));

            // lấy ra map từ session
            HashMap mapShoes = (HashMap) req.getSession().getAttribute("cart");

            // xóa shoes_detail bằng shoes_detail_id gửi lên
            mapShoes.remove(productDetailID);

            // cập nhật lại session
            req.getSession().setAttribute("cart", mapShoes);

        }

        // nếu params là change thì chạy change
        if(pathName.equalsIgnoreCase("change")) {

            // lấy ra các giá trị params gửi lên
            int productDetailID = Integer.parseInt(req.getParameter("productDetailID"));
            int newQuantity = Integer.parseInt(req.getParameter("newQuantity"));

            // lấy ra map từ session
            HashMap mapShoes = (HashMap) req.getSession().getAttribute("cart");

            // tạo một đối tượng OrderDetail và set những giá trị mới
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setQuantity(newQuantity);
            orderDetail.setShoesID(productDetailID);

            // put lại vào map
            mapShoes.put(productDetailID, orderDetail);

            // cập nhật session
            req.getSession().setAttribute("cart", mapShoes);

        }

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    }
}
