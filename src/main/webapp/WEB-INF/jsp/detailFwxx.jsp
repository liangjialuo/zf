<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>租房网</title>
    <%@include file="main.jsp" %>
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
            <c:if test="${Yh == null}">
                <form action="Yh/login" method="post">
                    <table align="center">
                        <tr>
                            <td colspan="2">帐号：</td>
                        </tr>
                        <tr>
                            <td colspan="2"><input name="yhzh" type="text" style="width: 100px;"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">密码：</td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="password" name="yhmm" style="width: 100px;"/></td>
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
                </form>
            </c:if>
            <c:if test="${Yh != null}">
                <table align="center">
                    <tr>
                        <td width=''>
                            <font color='red'>当前用户：${Yh.yhzh}</font>
                        </td>
                    </tr>
                    <tr>
                        <td width='150'><a href="listMyFwxx?yhbh=${Yh.yhbh}">管理我的租房信息</a></td>
                    </tr>
                    <tr>
                        <td width='100'><a href="addFwxx">发布租房信息</a></td>
                    </tr>
                    <tr>
                        <td width='100'><a href="index">返回首页</a></td>
                    </tr>
                    <tr>
                        <td width='100'><a href="toCancel">[注销]</a></td>
                    </tr>
                </table>
            </c:if>
        </td>
        <td width="35" background="images/layout_24.gif">&nbsp;</td>
        <td width="495" align="center">
            <table width="450">
                <tr>
                    <td id="listTitle">${load.bt}</td>
                </tr>
                <tr>
                    <td>
                        <hr/>
                    </td>
                </tr>
                <tr>
                    <td><strong>地址：</strong>${load.dz}</td>
                </tr>
                <tr>
                    <td><strong>租金：</strong>${load.zj}</td>
                </tr>
                <tr>
                    <td><strong>联系人：</strong>${load.lxr}</td>
                </tr>
                <tr>
                    <td><strong>联系电话：</strong>${load.lxdh}</td>
                </tr>
                <tr>
                    <td><strong>房屋类型：</strong>1室1厅${load.lxbh}</td>
                </tr>
                <tr>
                    <td>
                        <strong>装修情况：${load.zxqk}</strong>
                        毛坯房
                    </td>
                </tr>
                <tr>
                    <td><strong>所在楼层：${load.szlc}</strong>
                        七层~以上
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>房屋朝向：${load.fwcx}</strong>
                        南北
                    </td>
                </tr>
                <tr>
                    <td><strong>发布时间：</strong> ${load.sfbsj}</td>
                </tr>
                <tr>
                    <td>
                        <hr>
                    </td>
                </tr>
                <tr>
                    <td>
                        <!-- 文本域中的内容是有格式的，必须要用pre标签 -->
                        <pre>${load.bz}</pre>
                    </td>
                </tr>
                <tr>
                    <td><input type="button" value="后退" class="btn" onclick="javascript:history.back();"></td>
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
