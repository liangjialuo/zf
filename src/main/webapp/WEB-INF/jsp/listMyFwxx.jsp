<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>租房网</title>
    <%@include file="main.jsp"%>
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
            <table align="center">
                <tr>
                    <td width=''>
                        <font color='red'>当前用户：${Yh.yhzh}</font>
                    </td>
                </tr>
                <tr>
                    <td width='150'><a>管理我的租房信息</a></td>
                </tr>
                <tr>
                    <td width='100'><a href="toAddFwxx">发布租房信息</a></td>
                </tr>
                <tr>
                    <td width='100'><a href="toIndex">返回首页</a></td>
                </tr>
                <tr>
                    <td width='100'><a href="toCancel">[注销]</a></td>
                </tr>
            </table>
        </td>
        <td width="35" background="images/layout_24.gif">&nbsp;</td>
        <td width="495" align="center">
            <table>
                <tr>
                    <td width="3%">&nbsp;</td>
                    <td width="97%">
                        <table style="width: 450px;">
                            <tr>
                                <td style="width: 280px;">标题</td>
                                <td style="width: 100px;" align='center'>月租金</td>
                                <td style="width: 100px;" align='center'>发布日期</td>
                                <td style="width: 50px;">&nbsp;</td>
                                <td style="width: 50px;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan='5'>
                                    <hr/>
                                </td>
                            </tr>
                            <c:forEach items="${editList}" var="v">
                                <tr>
                                    <td><a href='loadFwxx?fwbh=${v.fwbh}'>${v.bt}</a></td>
                                    <td align='center' style='height:30px;'>${v.zj}元</td>
                                    <td align='center'>${v.sfbsj}</td>
                                    <td align='center' style='height:30px;'><a href='deleteFwxx?fwbh=${v.fwbh}&yhbh=${v.yhbh}'>[删除]</a>
                                    </td>
                                    <td align='center' style='height:30px;'><a href='loadEditFwxx?fwbh=${v.fwbh}'>[修改]</a></td>
                                </tr>
                            </c:forEach>
                            <tr>
                                <td colspan='5'>
                                    <hr/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
            </table>
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
