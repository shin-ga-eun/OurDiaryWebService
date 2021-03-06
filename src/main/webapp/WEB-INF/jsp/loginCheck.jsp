<%@ page import="java.time.LocalDate" %>
<%@ page language="java" contentType="text/html;charset=utf-8" %>

<html>
<head><title>login Check</title></head>
<body>
    <%
        String LOGIN_OK = (String) request.getAttribute("LOGIN_OK");

        if(LOGIN_OK.equals("null")) {
            out.println("<script>alert('등록되지 않은 이메일입니다! 회원가입페이지로 이동합니다..'); </script>");
            out.println("<script>location.href='signUp'</script>");
        }

        if(LOGIN_OK.equals("success")) {
            String sessionID = session.getId();
            String email = (String) request.getParameter("email");
            String password = (String) request.getParameter("password");
            String name = (String) request.getAttribute("USERNAME");
            session.setAttribute("sessionEmail",email);
            session.setAttribute("sessionPassword", password);
            session.setAttribute("sessionUserName", name);

            //for mainhome default list
            LocalDate today = LocalDate.now();
            String section = today.getYear()+"-"+today.getMonthValue()+"-"+1;
            session.setAttribute("sessionSection", section);

            //move page
            out.println("<script>location.href='mainhome'</script>");
        }
        else if(LOGIN_OK.equals("wrongPassword")){
            out.println("<script>alert('비밀번호가 잘못되었습니다! 다시로그인해주세요..'); </script>");

            //move page
            out.println("<script>history.back();</script>");
        }

    %>

    </Form>
</body>
</html>