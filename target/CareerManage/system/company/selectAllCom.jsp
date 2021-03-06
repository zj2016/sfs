<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2016/10/25
  Time: 9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.*" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/default.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css"/>
    <script src="${pageContext.request.contextPath}/js/showele.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/icon.css" />
</head>
<body>
<div class="table-box">
    <div class="table-content">
        <!--这是标题栏-->
        <div class="table-head">
            <div class="table-address">
                <div style="float: left;">
                    <span>信息管理</span><div class="left-arrow"></div><span>企业管理</span>
                </div> <br />
                <div class="Big-title">
                    <div class="littil-title">
                        企业信息
                    </div>
                    <div class="search-box">
                        <form action="${pageContext.request.contextPath}/company/findByComp">
                            <select id="searchType" name="searchType" style="width: 120px;height: 30px">
                                <option value="cname" ${searchType eq "cname"?'selected':''}>按企业名称</option>
                                <option value="chr" ${searchType eq "chr"?'selected':''}>按联系人</option>
                            </select>
                            <input id="searchtext" name="searchtext" type="text" style="width:120px;height: 30px;" onfocus="javascript:if(this.value=='请输入字符...')this.value='';" required="required" placeholder="请输入字符..."/>
                            <button class="mybutton" type="button" onclick="this.form.submit()"> <span>搜索</span> </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--这是标题栏结束-->
        <hr class="fengexian">
        <div>
            <!--这是表格开始-->
            <table  class="pure-table pure-table-bordered CompInfo1">
                <thead>
                <tr>
                    <td width="200px">企业名称</td>
                    <td  >招聘岗位</td>
                    <td width="70px">联系人</td>
                    <td width="120px">联系电话</td>
                    <td width="90px">在岗学生</td>
                    <td style="text-align: center;" width="80px">操作</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach varStatus="i" var="list" items="${companylist}" >
                    <tr>
                        <td><button class="mybutton" type="button" onclick="ShowCompByCid(${list.cid})">${list.cname}</button></td>
                        <td><c:forEach var="job" items="${list.cmJobs}">
                            <button class="mybutton" type="button" onclick="selectRecruitInfo(${list.cid},${job.jid})">@${job.jname}&nbsp;&nbsp;</button>
                        </c:forEach>
                        </td>
                        <td>${list.chr}</td>
                        <td>${list.cphone}</td>
                        <td><button class="mybutton" type="button" onclick="location='${pageContext.request.contextPath }/company/forCompStuInfo?cid=${list.cid}'">${list.stuCount}人</button></td>
                        <td><button class="mybutton" type="button" onclick="AreYouSourCompany(${list.cid})">删除</button></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="table-slipline"></div>
            <!--这是表格结束-->
        </div>
        <div>
            <div class="pagination pagination-centered">
                <ul>
                    ${pageCode }
                </ul>
            </div>
            <div class="left-button-footer">
                <button type="submit" class="mybutton" value="Submit" onclick="window.open('${pageContext.request.contextPath}/company/outputCompany')">导出数据</button>
            </div>
        </div>
    </div>
    </div>
</body>
</html>