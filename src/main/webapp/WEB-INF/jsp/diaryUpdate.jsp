<%@ page import="com.example.demo.domain.member.dto.GetMemberDto" %>
<%@ page import="com.example.demo.domain.diary.dto.GetDiaryDto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<%
    String id = (String) request.getAttribute("diaryId");
    GetDiaryDto diaryInfo = (GetDiaryDto) request.getAttribute("diary");
%>
<%--        mainhome header--%>
<div class="fixed-top">
    <jsp:include page="header.jsp" flush="false"/>
</div>

<div class="container" style="padding-top: 150px;">

    <div class=".container-md" >
        <p class="font-weight-normal" style="font-size: xx-large">일기 수정 페이지</p>

        <form action="/diaryCheck?id=<%=id%>" method="post">
            <div class="form-group row">
                <label for="date" class="col-sm-2 col-form-label">Date</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control" id="date" name="date" value="<%=diaryInfo.getDate()%>">
                </div>
            </div>

            <div class="form-group row">
                <label for="title" class="col-sm-2 col-form-label">Title</label>
                <div class="col-sm-10">
                    <input type="text" required class="form-control" id="title" name="title" value="<%=diaryInfo.getTitle()%>">
                </div>
            </div>
            <div class="form-group row">
                <label for="weather" class="col-sm-2 col-form-label">Weather</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="weather" name="weather" value="<%=diaryInfo.getWeather()%>">
                </div>
            </div>
            <div class="form-group row">
                <label for="content" class="col-sm-2 col-form-label">Profile</label>
                <div class="col-sm-10">
                    <textarea aria-multiline="true" rows="3" class="form-control" id="content" name="content"><%=diaryInfo.getContent()%></textarea>
                </div>
            </div>
            <div class="form-group row">
                <label for="create_at" class="col-sm-2 col-form-label">Create_at</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control" id="create_at" name="create_at" value="<%=diaryInfo.getCreate_at()%>">
                </div>
            </div> <div class="form-group row">
            <label for="modify_at" class="col-sm-2 col-form-label">Modify_at</label>
            <div class="col-sm-10">
                <input type="text" readonly class="form-control" id="modify_at" name="modify_at" value="<%=diaryInfo.getModify_at()%>">
            </div>
        </div>


            <div class="form-group row">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">수정완료</button>
                    <button type="button" class="btn btn-secondary" onclick="history.back(-1)">이전으로</button>
                </div>
            </div>
        </form>






    </div>
    <div class="fixed-bottom">
        <jsp:include page="footer.jsp" flush="false"/>
    </div>

</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>