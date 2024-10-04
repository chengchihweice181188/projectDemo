<%@ page import="DAOs.LoginDAO" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Cookie[] cList = request.getCookies();
            LoginDAO lDao = new LoginDAO();
            if (cList != null) {
                boolean flag = false;
                String username = "";
                for (int i = 0; i < cList.length; i++) {
                    if (cList[i].getName().equals("Login")) {
                        username = cList[i].getValue();
                        flag = true;
                        break;
                    }
                }
                if (flag) {
        %>
        <b>Welcome to Profile</b>
        <br>
        <b>Welcome, <%= lDao.getName(username)%></b>
        <form action="SignOut.jsp" method="post">
            <input type="submit" value="Sign out" name="delete" />
        </form>
        <%
                } else {
                    response.sendRedirect("index.jsp");
                }
            } else {
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>


