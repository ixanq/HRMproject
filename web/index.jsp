<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/11
  Time: 7:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登录界面</title>
    <style>
      .warning{
        color: red;
        display: none;
      }
    </style>
    <script src="/bootstrap/js/jquery-1.7.2.js"></script>
    <script>

        $(function(){
            $("input:eq(0)").blur(function(){
                var name=$("#name").val();
                var url="${pageContext.request.contextPath}/ajaxCheck";
                var args={"name":name};
                $.post(url,args,function(data){
                    if(data=="no"){
                        //用户名存在
                        alert("不能注册");
                        $("#nameWarning").eq(1).innerHTML="账号已存在"
                        $("#nameWarning ").css("color","red");
                        $(":submit").attr("disabled",true);
                    }else{
                        alert("可以注册");
                        //按钮禁用
                        $(":submit").attr("disabled",false);
                    }
                })
            })
        })

        $(function(){
            $("form").submit(function(){
                var name=$("input").eq(0).val();
                var password1=$("input").eq(1).val();
                var password2=$("input").eq(2).val();

                if(name==""){
                    $(".warning").eq(0).css("display","inline");
                    return false;
                }else {
                    $(".warning").eq(0).css("display","none");
                }
                if(password1==""){
                    $(".warning").eq(1).css("display","inline");
                    return false;
                }else {
                    $(".warning").eq(1).css("display","none");
                }
                if(password1!=password2){
                    $(".warning").eq(2).css("display","inline");
                    return false;
                }else {
                    $(".warning").eq(2).css("display","none");
                }
            })
        })
    </script>
  </head>
  <body bgcolor="#bdb76b">

    <form action="visitorRegist" method="post" >
      <table bgcolor="lime" border="2px" align="center">
        <tr>
          <td>用户名：</td>
          <td><input id="name" type="text" name="name"></td>
          <td><span id="nameWarning" class="warning">名字不能为空</span></td>
        </tr>

        <tr>
          <td>密&nbsp;码：</td>
          <td><input id="password1" type="password" name="password"></td>
          <td><span id="password1Warning" class="warning">密码不能为空</span></td>
        </tr>

        <tr>
          <td>密码确认：</td>
          <td><input id="password2" type="password" name="password"></td>
          <td><span id="password2Warning" class="warning">密码不一致</span></td>
        </tr>

        <tr>
          <td colspan="2" style="text-align: center"><input  type="submit" value="注册"></td>
        </tr>
      </table>
    </form>

  </body>
</html>
