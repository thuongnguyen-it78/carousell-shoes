package thuongnguyen.it78.filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebFilter(filterName = "MyFilter", urlPatterns = {"/*"})
public class ServiceFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse res = (HttpServletResponse) servletResponse;

        // có cookie cart hay chưa? nếu có thì thôi, nếu chưa thì set
        if(req.getSession().getAttribute("cart") == null) {
            HashMap mapCart = new HashMap();
            req.getSession().setAttribute("cart", mapCart);
        }

        // set UTF-8 cho tất cả request lên
        req.setCharacterEncoding("UTF-8");

        filterChain.doFilter(req, res);

    }

    @Override
    public void destroy() {

    }
}
