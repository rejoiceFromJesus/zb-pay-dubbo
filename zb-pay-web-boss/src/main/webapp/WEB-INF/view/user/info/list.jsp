<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/taglib.jsp"%>
<form id="pagerForm" method="post" action="${baseURL }/user/info/list">
    <%@include file="../../common/pageParameter.jsp" %>
</form>
<!-- ==================================================================== -->
<!-- 【个人网站】：http://www.2b2b92b.com -->
<!-- 【网站源码】：http://git.oschina.net/zhoubang85/zb -->
<!-- 【技术论坛】：http://www.2b2b92b.cn -->
<!-- 【开源中国】：https://gitee.com/zhoubang85 -->

<!-- 【支付-微信_支付宝_银联】技术QQ群：470414533 -->
<!-- 【联系QQ】：842324724 -->
<!-- 【联系Email】：842324724@qq.com -->
<!-- ==================================================================== -->
<div class="pageHeader">
	<form rel="pagerForm" onsubmit="return navTabSearch(this);" action="${baseURL }/user/info/list"
		method="post">
		<div class="searchBar">
			<table class="searchContent">
				<tr>
				    <td>用户名称：
                        <input type="text" name="userName" value="${rpUserInfo.userName}" />
                    </td>
                    <td>
						<div class="buttonActive">
							<div class="buttonContent">
							     <button title="查询" type="submit">查&nbsp;询</button>
							</div>
						</div>
					</td>
                 </tr>
			</table>
		</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
				<li><a title="添加用户" class="add"
					href="${baseURL }/user/info/addUI" target="navTab"><span>添加用户</span>
				</a></li>
				<li class="line">line</li>
		</ul>
	</div>
	<table class="table" width="101%" layoutH="112">
		<thead>
			<tr>
				<th width="5%">序号</th>
				<th width="15%">用户编号</th>
				<th width="10%">用户名称</th>
				<th width="10%">账户编号</th>
				<th width="10%">状态</th>
				<th width="15%">创建时间</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${pageBean.recordList}" varStatus="s">
				<tr>
					<td>${s.index + 1}</td>
					<td>${item.userNo}</td>
					<td>${item.userName}</td>
					<td>${item.accountNo}</td>
					<td>${item.statusDesc}</td>
					<td><fmt:formatDate value="${item.createTime}"
					     pattern="yyyy-MM-dd HH:mm:ss" />
			        </td>
				</tr>
			</c:forEach>
			<c:if test="${pageBean.totalCount==0}"><tr><td>暂无数据</td></tr></c:if>
		</tbody>
	</table>
	<%@include file="../../common/pageBar.jsp" %>
</div>
