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
                    <td width='100'><a>发布租房信息</a></td>
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
            <form action="addMyFwxx" method="post" onsubmit="return doAddFwxx();">
                <table>
                    <tr>
                        <td colspan="2">发布租房信息：</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input name="yhbh" type="hidden" value="${Yh.yhbh}">
                            <hr/>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>标题：</strong></td>
                        <td><input name="bt" type="text" style="width: 180px;"><span class="required">*</span></td>
                    </tr>
                    <tr>
                        <td><strong>地址：</strong></td>
                        <td><input name="dz" type="text" style="width: 180px;"><span class="required">*</span></td>
                    </tr>
                    <tr>
                        <td><strong>租金：</strong></td>
                        <td><input name="zj" type="text" style="width: 180px;"><span class="required">*</span></td>
                    </tr>
                    <tr>
                        <td><strong>联系人：</strong></td>
                        <td><input name="lxr" type="text" style="width: 180px;"><span class="required">*</span></td>
                    </tr>
                    <tr>
                        <td><strong>联系电话：</strong></td>
                        <td><input name="lxdh" type="text" style="width: 180px;"><span class="required">*</span></td>
                    </tr>
                    <tr>
                        <td><strong>房屋类型：</strong></td>
                        <td>
                            <select name="lxbh" style='width:180px;' class='' onchange=''>
                                <option value=''>--请选择--</option>
                                <option value='1'>1室1厅</option>
                                <option value='2'>2室1厅</option>
                                <option value='3'>2室2厅</option>
                                <option value='4'>3室1厅</option>
                                <option value='5'>3室2厅</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>装修情况：</strong></td>
                        <td>
                            <select name="zxqk" style="width:180px;">
                                <option value="">--请选择--</option>
                                <option value="1">毛坯房</option>
                                <option value="2">简单装修</option>
                                <option value="3">精装修</option>
                                <option value="4">豪华装修</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>所在楼层：</strong></td>
                        <td>
                            <select name="szlc" style='width:180px;' class='' onchange=''>
                                <option value=''>--请选择--</option>
                                <option value='1'>一层</option>
                                <option value='2'>二层</option>
                                <option value='3'>三层</option>
                                <option value='4'>四层~六层</option>
                                <option value='5'>七层~以上</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>房屋朝向：</strong></td>
                        <td>
                            <select name="fwcx" style='width:180px;' class='' onchange=''>
                                <option value=''>--请选择--</option>
                                <option value='1'>东</option>
                                <option value='2'>南</option>
                                <option value='3'>西</option>
                                <option value='4'>北</option>
                                <option value='5'>东西</option>
                                <option value='6'>南北</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>备注：</strong></td>
                        <td><textarea name="bz" rows="5" cols="30"></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div align="center"><input type="submit" value="提交" class="btn"></div>
                        </td>
                    </tr>
                </table>
            </form>
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
