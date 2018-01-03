<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<html>
<head>
    <title>租房网</title>
    <%@include file="main.jsp" %>
    <script>
        function login() {
            var yhzh = document.getElementById("yhzh").value;
            alert("账号不能为空" + yhzh);
            if (yhzh.length != 0) {
                alert("账号不能为空");
                return false;
            } else {
                return true;
            }
//            if (yhmm1.length != 0) {
//                if (yhmm1 != yhmm2) {
//                    alert("两次密码不一致");
//                    document.getElementById("yhmm2").value = "";
//                    return false;
//                }
//            } else {
//                alert("密码不能为空");
//                return false;
//            }
        }
    </script>
</head>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
    <c:if test="${msg!=null}">
        <script>
            alert("${msg}");
        </script>
    </c:if>
    <tr>
        <td colspan="5"><img src="images/top.jpg" width="780" height="213"></td>
    </tr>
    <tr>
        <td colspan="5"><img src="images/middle1.jpg" width="780" height="47"></td>
    </tr>
    <tr>
        <td width="38" background="images/middle2.jpg">&nbsp;</td>
        <td width="172">
            <table align="center">
                <tr>
                    <td><a href="index.jsp">返回首页</a></td>
                </tr>
            </table>
        </td>
        <td width="35" background="images/layout_24.gif">&nbsp;</td>
        <td width="495">
            <f:form action="Yh/userAdd" method="post" modelAttribute="yh">
                <table align="center">
                    <tr>
                        <td>用户注册：</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <hr/>
                        </td>
                    </tr>
                    <tr>
                        <td>帐号：</td>
                        <td><f:input path="yhzh" style="width:180px;"/></td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><f:password path="yhmm" style="width:180px;"/></td>
                    </tr>
                    <tr>
                        <td>确认密码：</td>
                        <td><input name="yhmm2" type="password" style="width:180px;"/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="注册" class="btn">&nbsp;&nbsp;
                            <input type="reset" value="重置" class="btn">
                        </td>
                    </tr>
                </table>
            </f:form>
        </td>
        <td width="40" background="images/middle4.jpg">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="5"><img src="images/bottom.jpg" width="780" height="82"></td>
    </tr>
</table>
<P align="center">2007 Beijing Aptech Beida Jade Bird Information Technology Co.,Ltd 版权所有</P>
<br/>
</BODY>
</html>