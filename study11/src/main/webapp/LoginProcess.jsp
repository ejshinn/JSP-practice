<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
    request.setCharacterEncoding("UTF-8");
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");

    if (userId.equals("test1") && userPw.equals("1234")) {
        request.setAttribute("userId", userId);
        request.setAttribute("userPw", userPw);
        request.setAttribute("userName", "테스터 유저 1");

        request.getRequestDispatcher("./LoginOK.jsp").forward(request, response);
    }
    else {
        response.sendRedirect("./LoginFail.jsp");
    }
%>