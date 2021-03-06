<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.ixanq.entity.Visitor"%>
<%@ page import="com.ixanq.entity.Manager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员主页</title>
    <style>
        body{
            width: 100%;
            height: 85%;
            background-image: url("/logo/backgrond.jpg");
            background-repeat: repeat;
        }
        #addseccessfuly{
            width: 50%;
            height:30%;
            margin: 40px auto;
            text-align: center;
            font-size: 32px;
            text-decoration-color: green;
            background-color: #c0a16b;
        }
    </style>
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery-1.7.2.js"></script>
</head>
<body>
<%@include file="managerBaseNav.jsp" %>
    <div id="addseccessfuly">
        <c:if test="${requestScope.thereAreMesseges!=null}">
            您有未读简历，请前往阅读<br>
        </c:if>
        <c:if test="${requestScope.thereIsNoMesseges!=null}">
            您暂时未收到简历信息，请填写招聘信息<br>
        </c:if>
        <c:if test="${requestScope.messegesIsDelete!=null}">
            招聘信息被删光了，请进行其他操作<br>
        </c:if>
        <c:if test="${requestScope.empityResumeMasseges!=null}">
            没有招聘信息，请进行其他操作<br>
        </c:if>
        <c:if test="${requestScope.addAdvertiseAndCommit!=null}">
            招聘信息添加成功！<br>
        </c:if>
        <c:if test="${requestScope.manageAdvertiseEmpty!=null}">
            您还没有添加招聘信息，请前往添加<br>
        </c:if>
        <c:if test="${requestScope.lookTheAdvertiseDetailMasseges!=null}">
            您还没有添加招聘信息，请前往添加<br>
        </c:if>
        <c:if test="${requestScope.noadvertises!=null}">
            您还没有添加招聘信息，请前往添加<br>
        </c:if>
        <c:if test="${requestScope.visitorViewxist!=null}">
            您已经邀请过当前用户，不能再次邀请面试<br>
        </c:if>
        <c:if test="${requestScope.visitorViewSeccessfully!=null}">
           面试邀请成功，请等待游客答复。<br>
        </c:if>
        <c:if test="${requestScope.thereAregoInterviewsMesseges!=null}">
            有面试请求，请前往录用。<br>
        </c:if>
        <c:if test="${requestScope.goInterviewsMessegesEmpty!=null}">
            暂时没有面试请求<br>
        </c:if>
        <c:if test="${requestScope.nogoInterview!=null}">
            暂时没有面试请求<br>
        </c:if>

        <c:if test="${requestScope.NochangeToEmployee!=null}">
            暂时没有该员工信息<br>
        </c:if>
        <c:if test="${requestScope.changeToEmployeeSeccessfully!=null}">
            录用成功<br>
        </c:if>
        <c:if test="${requestScope.updaterefuseToChangeEmployee!=null}">
            操作成功<br>
        </c:if>
        <c:if test="${requestScope.deleteWorkPositionForDepartmen!=null}">
            该职位下存在用户，不能删除<br>
        </c:if>
        <c:if test="${requestScope.deleteWorkPositionForDepartmenOk!=null}">
            职位删除成功<br>
        </c:if>
        <c:if test="${requestScope.deleteDepartmentByIdFalse!=null}">
            该部门下存在用户，不能删除<br>
        </c:if>
        <c:if test="${requestScope.ajaxDeleteTrainById!=null}">
            该培训信息不存在<br>
        </c:if>
        <c:if test="${requestScope.changeToEmployeeExist!=null}">
            该用户已经是员工，不能再次录用<br>
        </c:if>
        <c:if test="${requestScope.deleteWorkPositionForDepartmen!=null}">
            该职位下存在员工，无法删除<br>
        </c:if>
        <c:if test="${requestScope.addRewardForEmployee!=null}">
            奖惩信息添加成功<br>
        </c:if>
        <c:if test="${requestScope.addTrainForDepartmentExist!=null}">
            该部门存在培训信息，无法再次添加<br>
        </c:if>
        <c:if test="${requestScope.updateEmployeeAndCommit1!=null}">
            职位修改成功<br>
        </c:if>
        <c:if test="${requestScope.cantbehandelSalary!=null}">
            今天是：${cantbehandelSalary} &nbsp;号。不能发放工资，请在每个月的10号之前发放<br>
        </c:if>
        <c:if test="${requestScope.salaryHasHandeled!=null}">
            该员工已经发过工资不能再次发放<br>
        </c:if>
        <c:if test="${requestScope.handelSalarySeccess!=null}">
            发放工资成功<br>
        </c:if>
        <c:if test="${requestScope.outOfTheEmployeeFromWork!=null}">
            操作成功，已开除<br>
        </c:if>
        <c:if test="${requestScope.thereAreReconsiderMesseges!=null}">
            您有需要处理的复议内容，请前往处理<br>
        </c:if>
        <c:if test="${requestScope.reconsiderManagementEmpty!=null}">
            暂时没有回馈信息<br>
        </c:if>
        <c:if test="${requestScope.ajaxDeleteReconsiderByIdEmpty!=null}">
            暂时没有回馈信息<br>
        </c:if>
        <c:if test="${requestScope.isAlreadyOutOfFromWork!=null}">
            该员工已经是离职状态，操作失败<br>
        </c:if>



    </div>
</body>
</html>