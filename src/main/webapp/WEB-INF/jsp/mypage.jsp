<%@ page import="com.example.demo.domain.member.dto.GetMemberDto" %><%--
  Created by IntelliJ IDEA.
  User: sge
  Date: 2020/06/25
  Time: 11:02 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>my page</title>
</head>
<body>
    <%--        mainhome header--%>
    <div class="fixed-top">
        <jsp:include page="header.jsp" flush="false"/>
    </div>

    <%--    my page body => 페이지 mypageInfo와 mypageUpdate를 전환하는 방법은 없을까??? --%>
    <div style="padding-top: 150px;">
        <jsp:include page="mypageInfo.jsp"/>
    </div>
    <%--        mainhome footer--%>
    <div class="fixed-bottom">
        <jsp:include page="footer.jsp" flush="false"/>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
