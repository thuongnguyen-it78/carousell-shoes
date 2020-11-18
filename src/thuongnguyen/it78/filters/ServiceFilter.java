package thuongnguyen.it78.filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

@WebFilter(filterName = "MyFilter", urlPatterns = {"/*"})
public class ServiceFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

//    @Override
//    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
//
//        HttpServletRequest request = (HttpServletRequest) req;
//        HttpServletResponse response = (HttpServletResponse) res;
//        if(req.getSession().getAttribute("cart") == null) {
//            listCart = new ArrayList();
//            listCart.add(orderDetail);
//            req.getSession().setAttribute("cart", listCart);
//        }
//
//
//        chain.doFilter(req, res);
//    }


    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse res = (HttpServletResponse) servletResponse;

        if(req.getSession().getAttribute("cart") == null) {
            HashMap mapCart = new HashMap();
            req.getSession().setAttribute("cart", mapCart);
        }

        req.setCharacterEncoding("UTF-8");

        filterChain.doFilter(req, res);

    }

    @Override
    public void destroy() {

    }
}
