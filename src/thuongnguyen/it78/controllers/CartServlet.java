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
import java.util.HashMap;

@WebServlet("/me/cart")
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        // lấy ra cart từ session
        HashMap mapCart = (HashMap) req.getSession().getAttribute("cart");

        // lấy ra shoes_detail_id và quantity của shoes_detail
        int productID = Integer.parseInt(req.getParameter("productID"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));

        // khởi tạo đối tượng order
        OrderDetail orderDetail = new OrderDetail();

        // set shoes_detail_id và quantity
        orderDetail.setShoesID(productID);
        orderDetail.setQuantity(quantity);

        // kiểm tra trong map có key này hay chưa
        boolean isHave = mapCart.containsKey(productID);

        // nếu chưa thì put vào
        if(!isHave) mapCart.put(productID, orderDetail);
        else {
            // nếu có rồi, thì bằng số lượng cữ bằng số lượng mới
            OrderDetail od = (OrderDetail) mapCart.get(productID);
            od.setQuantity(od.getQuantity() + quantity);

            // nếu put một key mới vào, mà trùng với key cũ thì thay giá trị cũ bằng giá trị mới
            mapCart.put(productID, od);
        }

        // set lại mapCart sau khi cập nhật vào session
        req.getSession().setAttribute("cart", mapCart);

        // trả lại số shoes đã thêm vào shopping cart
        PrintWriter pw = res.getWriter();
        pw.print(mapCart.size());

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/views/shopping-cart.jsp").forward(req, res);
    }
}
