<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="com.shiyuji.cy.pojo.UserAndReport" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/favicon.html">
    <title>食遇记管理员</title>
    <%@ include file="forAdmin.jsp" %>
  </head>

  <body>

    <section id="container" class="">
    <%@ include file="headAdmin.jsp" %>
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <ul class="sidebar-menu">
                  <li class="">
                      <a class="" href="${pageContext.request.contextPath}/admin/load">
                          <i class="icon-home"></i>
                          <span>主页</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon-tasks"></i>
                          <span>系统用户</span>
                          <span class="arrow "></span>
                      </a>
                      <ul class="sub">
                          <li class=""><a class="" href="${pageContext.request.contextPath}/admin/user/all">权限分配</a></li>
                          <li class=""><a class="" href="${pageContext.request.contextPath}/admin/admin/all">管理员管理</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu active">
                      <a href="javascript:;" class="">
                      	<i class="icon-book"></i>
                        <span>用户反馈</span>
                        <span class="arrow open"></span>
                      </a>
                      <ul class="sub">
                          <li  class=><a class="" href="${pageContext.request.contextPath}/admin/report/user/all">举报用户</a></li>
                          <li  class="active"><a class="" href="${pageContext.request.contextPath}/admin/report/menu/all">举报菜谱</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/admin/suggestion/all">意见反馈</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon-dashboard"></i>
                          <span>统计管理</span>
                          <span class="arrow"></span>
                      </a>
                      <ul class="sub">
                          <li class=""><a class="" href="${pageContext.request.contextPath}/admin/menu/all">菜谱管理</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/admin/menus/all">菜单管理</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/admin/question/all">问题管理</a></li>
                      </ul>
                  </li>
              </ul>
          </div>
      </aside>
      <section id="main-content">
          <section class="wrapper">
              <div class="row">
                  <div class="col-lg-12" style="margin-bottom: 40px;">
                      <section class="panel">
                          <header class="panel-heading" style="height: 50px;background-color: rgb(248, 255, 255);">
                              	被举报菜谱详情
                            	<button class="label label-success" style="margin-left: 980px;">已处理</button>
                            	<button class="label label-danger" style="margin-left: 20px;">未处理</button>
                          </header>
                          <table class="table table-striped border-top" id="sample_1">
                          <thead>
                          <tr>
                              <th style="width:8px;"><i class=" icon-star-empty"></i></th>
                              <th>序号</th>
                              <th class="hidden-phone">被举报菜谱</th>
                              <th class="hidden-phone">举报原因</th>
                              <th class="hidden-phone">举报人</th>
                              <th class="hidden-phone">举报时间</th>
                              <th class="hidden-phone"></th>
                          </tr>
                          </thead>
                          <tbody>
	                            <c:if test="${not empty rList }">
					          <c:forEach items="${rList }" var="r" varStatus="rl">
	                          <tr class="odd gradeX">
	                              <th style="width:8px;"><i class=" icon-star-empty"></i></th>
	                              <td>${rl.index + 1 }</td>
	                              <td class="hidden-phone">${r.m.mName }</td>
	                              <td class="hidden-phone">${r.r.cause }</td>
				                  <td>${r.u.uName }</td>
	                              <%
	                              UserAndReport ur = (UserAndReport)pageContext.getAttribute("r");
			          				Date date = new Date(ur.getR().getReportTime()); 
							          			%>
	                              <td class="hidden-phone"><%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date) %></td>
	                              <td class="hidden-phone">
	                              	<a class="label label-info"  href="${pageContext.request.contextPath}/createMenu/selectOne/${r.m.mId}?admin=1" target="_blank">查看详情</a>
	                              	<a class="label label-warning">屏蔽</a>
	                              </td>
	                          </tr>
	                          </c:forEach>
	                         </c:if>
                          </tbody>
                           <tfoot>
                          		<tr>
                          				<td colspan="7" style="text-align: center;">
                          					<ul class="pagination">
                          						<li><a href="#">总页数   ${page.totalPageCount }</a></li>
												<c:if test="${page.pageNow ne 1}">
													<li><a href="${pageContext.request.contextPath}/admin/report/menu/all?currentpage=${page.pageNow-1}">&laquo;</a></li>
											    </c:if>
											    <li><a href="#">${page.pageNow }</a></li>
											    <c:if test="${page.pageNow ne page.totalPageCount}">
											        <li><a href="${pageContext.request.contextPath}/admin/report/menu/all?currentpage=${page.pageNow+1}">&raquo;</a></li>
											    </c:if>
											</ul>
                          				</td>
                          		</tr>
                          </tfoot>
                          </table>
                      </section>
                  </div>
              		
              </div>
          </section>
      </section>
  </section>

     	<script src="${pageContext.request.contextPath}/js/adminJs/jquery.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/jquery-1.8.3.min.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/bootstrap.min.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/jquery.scrollTo.min.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/jquery.sparkline.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/owl.carousel.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/jquery.customSelect.min.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/common-scripts.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/sparkline-chart.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/easy-pie-chart.js"  type="text/javascript" ></script> 
    
    <script>


      $(document).ready(function() {
          $("#owl-demo").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true

          });
      });


      $(function(){
          $('select.styled').customSelect();
      });

  </script>
  </body>
</html>
