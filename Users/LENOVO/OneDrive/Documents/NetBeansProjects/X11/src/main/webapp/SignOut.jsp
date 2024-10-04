<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Cookie[] cList = null;
            cList = request.getCookies();
            for (int i = 0; i < cList.length; i++) {//Duyet qua het tat ca cookie
                if (cList[i].getName().equals("Login")) {//nguoi dung da dang nhap
                    cList[i].setMaxAge(0);
                    response.addCookie(cList[i]);
                    break; //thoat khoi vong lap
                }
            }
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
