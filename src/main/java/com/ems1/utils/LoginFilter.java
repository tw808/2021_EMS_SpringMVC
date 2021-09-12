package com.ems1.utils;

import com.ems1.po.StaffInfo;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest
            , ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //get request
        HttpServletRequest request=(HttpServletRequest)servletRequest;
        //get session
        HttpSession session=request.getSession();
        //get staffinfo
        StaffInfo staffInfo=(StaffInfo)session.getAttribute("staff");
        //get url
        String url=request.getRequestURI();
        if(staffInfo!=null || url.contains("/login.jsp") || url.contains("/login.do") ){
            //filter
        filterChain.doFilter(request,servletResponse);}
        else {
            //dispatch
            request.getRequestDispatcher("login_info.jsp").forward(request,servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
