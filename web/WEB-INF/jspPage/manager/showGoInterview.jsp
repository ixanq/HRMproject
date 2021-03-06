<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.ixanq.entity.Visitor"%>
<%@ page import="com.ixanq.entity.Manager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>面试请求</title>
    <style>
        body{
            width: 100%;
            height: 85%;
            background-image: url("/logo/backgrond.jpg");
            background-repeat: repeat;
        }
        #head{
            width: 40%;
            margin: 20px auto;
            text-align: center;
            font-size: 18px;
            text-decoration-color: #677985;
            background-color: #67b168;
        }
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}\bootstrap\js\jquery-1.7.2.js"></script>
    <script>

        $(function(){
            $(".delete").click(function(){
                if(confirm("确认删除？")){
                    var $td=$(this).parent().parent().children();
                    var $tr=$(this).parent().parent();
                    var id=$td[0].innerHTML;
                    var url="${pageContext.request.contextPath}/ajaxDeleteGoInterviewForManagerById";
                    var args={"id":id};
                    $.post(url,args,function(data){
                        if(data=="yes"){
                            $tr.remove();
                        }
                    })
                }
            })
        })
    </script>
</head>
<body>
<%@include file="managerBaseNav.jsp" %>
<div id="head">
    <table border="2px"  align="center" style="background-color: green">
        <tr>
            <td>ID</td>
            <td>用户</td>
            <td>查看状态</td>
            <td>录用状态</td>
            <td>查看</td>
            <td>删除</td>
        </tr>
        <c:forEach items="${requestScope.goInterviews}" var="goInterview">
            <tr>
                <td>${goInterview.id}</td>
                <td>${goInterview.visitorName}</td>
                <td>${goInterview.viewStatus}</td>
                <td>${goInterview.passStatus}</td>
                <td><a href="${pageContext.request.contextPath}/lookTheGoInterviewDetailsForAdmin?id=${goInterview.id}">查看</a></td>
                <td><a class="delete" href="#">删除</a></td>

            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

