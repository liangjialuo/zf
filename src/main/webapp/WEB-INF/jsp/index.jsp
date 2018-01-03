<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
    <title>租房网</title>
    <%@include file="main.jsp" %>
    <script>
        function doSwitch(id) {
            var o = document.getElementById(id);
            if (o) {
                if (o.style.display == "none") {
                    o.style.display = "block";
                } else {
                    o.style.display = "none";
                }
            }
        }
    </script>
</head>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="5"><img src="images/top.jpg" width="780" height="213"></td>
    </tr>
    <tr>
        <td colspan="5"><img src="images/middle1.jpg" width="780" height="47"></td>
    </tr>
    <tr>
        <td width="38" background="images/middle2.jpg">&nbsp;</td>
        <td width="172" valign="top" align="center">
            <p>&nbsp;</p>
            <f:form action="Yh/login" method="post" modelAttribute="yh">
                <table align="center">
                    <tr>
                        <td colspan="2">帐号：<f:errors cssStyle="color: red" path="yhzh"/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><f:input path="yhzh" style="width: 100px;"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">密码：<f:errors cssStyle="color: red" path="yhmm"/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><f:password path="yhmm" style="width: 100px;"/></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="登陆" class='btn'>
                            <input type="reset" value="重置" class='btn'>
                        </td>
                    </tr>
                    <tr>
                        <td><a href="toReg">注册用户</a></td>
                    </tr>
                </table>
            </f:form>
        </td>
        <td width="35" background="images/layout_24.gif">&nbsp;</td>
        <td width="495" align="center"><br/>
            <f:form action="likeFwxx" method="post" modelAttribute="fwxx">
                <div style="text-align:left;width:88%;">
                    <f:input path="bt"/>
                    <input type="submit" value="查询" class="btn">&nbsp;<span onclick="doSwitch('advSearch');"
                                                                            style="cursor:hand;color:blue;">高级搜索</span>
                </div>
                <table width="88%;" id="advSearch" style="border:solid 0px #000;display:none;">
                    <tr>
                        <td>房屋类型：</td>
                        <td>
                            <f:select path="lxbh" style='width:80px;'>
                                <f:option value=''>--请选择--</f:option>
                                <f:option value='1'>1室1厅</f:option>
                                <f:option value='2'>2室1厅</f:option>
                                <f:option value='3'>2室2厅</f:option>
                                <f:option value='4'>3室1厅</f:option>
                                <f:option value='5'>3室2厅</f:option>
                            </f:select>
                        </td>
                    </tr>
                    <tr>
                        <td>租金：<input name="msg" type="hidden" value="a"></td>
                        <td><input type="text" style="width:80px;">至<input type="text" style="width:80px;">元/月</td>
                    </tr>
                    <tr>
                        <td colspan='3'>
                            <hr/>
                        </td>
                    </tr>
                </table>
                <table width="88%" cellspacing="0">
                    <tr>
                        <td width='250' class="table_title">标题</td>
                        <td width='90' align='center' class="table_title">月租金</td>
                        <td align='center' class="table_title">发布日期</td>
                    </tr>

                    <c:if test="${list==null}">
                        <jsp:forward page="/list?msg=a"/>
                    </c:if>
                    <c:forEach var="v" items="${list}">
                        <tr>
                            <td><a href='loadFwxx?fwbh=${v.fwbh}'>${v.bt}</a></td>
                            <td align='center' style='height:30px;'>${v.zj}元</td>
                            <td align='center'>${v.sfbsj}</td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td colspan='3'>
                            <hr/>
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