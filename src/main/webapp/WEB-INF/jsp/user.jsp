<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<c:choose>
    <c:when test="${Yh!=null}">
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
                    <td width='100'><a href="index">返回首页</a></td>
                </tr>
                <tr>
                    <td width='100'><a href="toCancel">[注销]</a></td>
                </tr>
            </table>
        </td>
    </c:when>
    <c:otherwise>
        <td width="172" valign="top" align="center">
            <p>&nbsp;</p>
            <form>
                <table align="center">
                    <tr>
                        <td colspan="2">帐号：</td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="text" style="width: 100px;"></td>
                    </tr>
                    <tr>
                        <td colspan="2">密码：</td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="password" style="width: 100px;"></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="登陆" class='btn'>
                            <input type="reset" value="重置" class='btn'>
                        </td>
                    </tr>
                    <tr>
                        <td><a href="reg.jsp">注册用户</a></td>
                    </tr>
                </table>
            </form>
        </td>
    </c:otherwise>
</c:choose>