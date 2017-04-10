<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <%@ include file="css_js.jsp" %>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/nav.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/one_menu.js"></script>
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/nav.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/one_menu.css" rel="stylesheet" type="text/css">
		<title>菜谱</title>
	</head>
	<body onload="changeTime('${Menu.create_time }')">
		<%@ include file="nav.jsp" %> 
		<div class="section" id="sec">
      		<div class="container">
        		<div class="row" style="margin-bottom: 75px;">
		            <div class="col-md-1 col-xs-1"></div>
		            <div class="col-md-7 col-xs-7 col-sm-7" style="padding-left: 6px;">
		            	<div class="row" style="margin-bottom: 15px;">
		          			<div class="col-md-12" id="font">${Menu.mName}</div>
		        		</div>
		        		<div class="row" style="margin-bottom: 15px;">
		          			<div class="col-md-12">
		          				<img src="${pageContext.request.contextPath}/upload/${Menu.mPic }" class="img-responsive">
		          			</div>
		        		</div>
		        		<div class="row" style="margin-bottom: 15px;">
		          			<div class="col-md-3 col-xs-3">
		          				<span style="color: #992222;font-size: 20px;">${Menu.menuCollectNum} </span> 
		          				<span class="user_info">人收藏过这道菜</span>
		          			</div>
		          			<div class="col-md-3 col-xs-3" style="padding-top: 1px;">
		          			<c:if test="${Menu.isUnLike eq '0' }">
		          				<a href="javascript:void(0);" onclick="clickZan('${Menu.mId}','${user.uId }','${Menu.likeNum}')">
		          					<i class="fa fa-thumbs-up" id="zan" style="color: gray;font-size: 22px;"></i>
		          				</a>
		          				<span class="user_info" id="isLike">${Menu.likeNum}  赞</span>
		          			</c:if>
		          			<c:if test="${Menu.isUnLike eq '1'}">
		          				<a href="javascript:void(0);" onclick="clickZan('${Menu.mId}','${user.uId }','${Menu.likeNum}')">
		          					<i class="fa fa-thumbs-up"  id="zan" style="color:#992222;font-size: 22px;"></i>
		          				</a>
		          				<span class="user_info" id="isLike">${Menu.likeNum}  已赞</span>
		          			</c:if>
		          			</div>
		          			<div class="col-md-6 col-xs-6 text-right">
		          				<div class="btn" style="margin-right: 3px;"><i class="fa fa-align-left" style="font-size: 23"></i></div>
		          				<div class="btn" style="width: 100px;font-size: 16px;">收藏</div>
		          			</div>
		        		</div>
		        		<hr>
		        		
		        		<div class="row" style="margin-bottom: 30px;">
		        			<div id="comment">
					        	<div class="col-md-12">
					        		<div class="row" style="margin-bottom: 20px;">
							        	<div class="col-md-12">
							        		<a href="" class="link">展开更多${Menu.commentNum}条评论</a>
							        	</div>
					        		</div>
					        		<div class="row" style="margin-bottom: 10px;">
							        	<div class="col-md-1">
							        		<a href="">
						          				<img src="${pageContext.request.contextPath}/img/user.png" class="img-circle img-responsive" width="30">
							        		</a>
						          		</div>
						          		<div class="col-md-9 col-xs-9 comment_margin" style="padding-left: 0px;">
							          		<a href="" class="link" class="comment_font">山间清泉</a>&nbsp;&nbsp;&nbsp;
							          		<p style="display: inline-block;" class="comment_font">真漂亮，好好吃，真喜欢，要学做</p>
							          	</div>
							          	<div class="col-md-2 col-xs-2 comment_margin text-right">
							          		<a href="" id="comment_reply">回复</a>
							          	</div>
					        		</div>
					        		<div class="row" style="margin-bottom: 10px;">
					        			<div class="col-md-1">
							        		<a href="">
						          				<img src="${pageContext.request.contextPath}/img/user.png" class="img-circle img-responsive" width="30">
							        		</a>
						          		</div>
						          		<div class="col-md-9 col-xs-9 comment_margin" style="padding-left: 0px;">
							          		<a href="" class="link" class="comment_font">山间清泉</a>&nbsp;&nbsp;&nbsp;
							          		<p style="display: inline-block;" class="comment_font">真漂亮，好好吃，真喜欢，要学做</p>
							          	</div>
							          	<div class="col-md-2 col-xs-2 comment_margin text-right">
							          		<a href="" id="comment_reply">回复</a>
							          	</div>
					        		</div>
					        		
					        		<div class="row"  style="margin-bottom: 20px;">
					        			<div class="col-md-10 col-xs-10">
					        				<input type="text" placeholder="评论" class="com_info comment_font"/>
					        			</div>
					        			<div class="col-md-2 col-xs-2 text-right">
					        				<div class="btn" style="height: 30px;">评论</div>
					        			</div>
					        		</div>
					        		<hr>
			          			</div>
					        </div>
			          	</div>
		        		
		        		<div class="row" style="margin-bottom: 30px;">
					        <div class="col-md-12">
					          	<img src="${pageContext.request.contextPath}/img/user.png" class="img-circle" width="60">
					          	<div id="user" style="display: inline-block;">敏-35</div>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 30px;">
					        <div class="col-md-12" id="user">
					          	镜头之下，有你，有我，有我们……<br>
   								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;建个不正经的菜谱，只为了记录生活中温暖的小事，曼妙的风景以及爱生活的心情。
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 30px;">
					        <div class="col-md-12" id="title" style="font-size: 25px;">
					        	用料 
					        </div>
			          	</div>
			          	
					    <c:set var="arr" value="${fn:split(Menu.shicai, '|')}" />
					    <c:forEach  items="${arr}" var="menu">
					        <div class="row" id="user" style="margin-bottom: 10px;">
					        	<div class="col-md-12">
					        		<a href="" class="a_hover">${menu}</a>
					        	</div>
					        </div>
					        <hr>
					    </c:forEach>
			          	
			          	<div class="row" style="margin-bottom: 25px;">
					        <div class="col-md-12" id="title" style="font-size: 25px;">
					        	${Menu.mName}的做法  
					        </div>
			          	</div>
			          	<c:set var="arr" value="${fn:split(Menu.steps, '|')}" />
					    <c:forEach  items="${arr}" var="step" varStatus="i">
				          	<div class="row" style="margin-bottom: 10px;">
						        <div class="col-md-12">
						        	<span id="title" style="font-size: 25px;">${i.index+1}</span>
						        	<span id="user">${step}</span>
						        </div>
				          	</div>
				        </c:forEach>
			          	
			          	<div class="row" style="margin-bottom: 25px;">
					        <div class="col-md-12">
					        	<span  id="title" style="font-size: 25px;">参照这个菜谱，大家做出 11 作品</span>
					        	<a href="" class="link" style="padding-left: 100px;">全部11个作品</a>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 25px;">
					        	<a href="" id="shicai_link">
					          		<div class="col-md-3 col-xs-3">
					          			<div id="line">
					            			<div class="row">
					              				<div class="col-md-12">
					                				<img src="${pageContext.request.contextPath}/img/one.jpg" class="img-responsive">
										        </div>
										    </div>
										    <div class="row" style="margin: 5px 0px">
										    	<div class="col-md-12">
										    		<img src="img/user.png" class="img-circle" width="20">
						          					<div id="user_red">秒江南</div>
										    	</div>
									    	</div>
									    </div>
									</div>
								</a>
								<a href="" id="shicai_link">
					          		<div class="col-md-3 col-xs-3">
					          			<div id="line">
					            			<div class="row">
					              				<div class="col-md-12">
					                				<img src="${pageContext.request.contextPath}/img/one.jpg" class="img-responsive">
										        </div>
										    </div>
										    <div class="row" style="margin: 5px 0px">
										    	<div class="col-md-12">
										    		<img src="${pageContext.request.contextPath}/img/user.png" class="img-circle" width="20">
						          					<div id="user_red">秒江南</div>
										    	</div>
									    	</div>
									    </div>
									</div>
								</a>
								<a href="" id="shicai_link">
					          		<div class="col-md-3 col-xs-3">
					          			<div id="line">
					            			<div class="row">
					              				<div class="col-md-12">
					                				<img src="${pageContext.request.contextPath}/img/one.jpg" class="img-responsive">
										        </div>
										    </div>
										    <div class="row" style="margin: 5px 0px">
										    	<div class="col-md-12">
										    		<img src="${pageContext.request.contextPath}/img/user.png" class="img-circle" width="20">
						          					<div id="user_red">秒江南</div>
										    	</div>
									    	</div>
									    </div>
									</div>
								</a>
								<a href="" id="shicai_link">
					          		<div class="col-md-3 col-xs-3">
					          			<div id="line">
					            			<div class="row">
					              				<div class="col-md-12">
					                				<img src="${pageContext.request.contextPath}/img/one.jpg" class="img-responsive">
										        </div>
										    </div>
										    <div class="row" style="margin: 5px 0px">
										    	<div class="col-md-12">
										    		<img src="${pageContext.request.contextPath}/img/user.png" class="img-circle" width="20">
						          					<div id="user_red">秒江南</div>
										    	</div>
									    	</div>
									    </div>
									</div>
								</a>
					        </div>
					        
					        <div class="row" style="margin-bottom: 25px;">
						        <div class="col-md-12">
						        	<a href="" class="btn" style="width: 100%;">上传你做的粮仓（芒果船）</a>
						        </div>
			          		</div>
			          	</div>
		            <div class="col-md-4 col-xs-4 col-sm-4">
		            	<div class="row" style="margin-bottom: 20px;margin-top: 50px;">
					        <div class="col-md-12">
					        	<span id="title" style="font-size: 20px;">被大家加入到以下菜单</span>
					        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					        	<a href="" class="link">加入菜单</a>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 15px;">
					        <div class="col-md-12">
					        	<span class="a_hover one_menu">水晶样点心</span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 15px;">
					        <div class="col-md-12">
					        	<span class="a_hover one_menu">水晶样点心</span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 15px;">
					        <div class="col-md-12">
					        	<span class="a_hover one_menu">水晶样点心</span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 15px;">
					        <div class="col-md-12">
					        	<span class="a_hover one_menu">水晶样点心</span>
					        </div>
			          	</div>
			          	
			          	<div class="row" style="margin-bottom: 15px;">
					        <div class="col-md-12 text-center">
					        	<a href="" class="link">全部菜单</a>
					        </div>
			          	</div>
			          	
			          	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12">
					        	<span id="title" style="font-size: 20px;">随便看看</span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 50px;">
				          	<div class="col-md-6">
				          		<a href="" class="a_hover one_menu">炒馍馍</a>
				          	</div>
				          	<div class="col-md-6">
				          		<a href="" class="a_hover one_menu">人参</a>
				          	</div>
				        </div>
				        
				        <div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12">
					        	<span class="user_info" style="font-size: 15px;">该菜谱创建于<span id="menu_time"></span></span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 50px;">
					        <div class="col-md-12">
					        	<span class="user_info" style="font-size: 15px;">版权归作者所有，没有作者本人的书面许可任何<br>人不得转载或使用整体或任何部分的内容。</span>
					        </div>
			          	</div>
			          	
			          	<div class="row">
					        <div class="col-md-12 text-center">
					        	<a href="">
					        		<span class="link" >举报该菜谱</span>
					        	</a>
					        </div>
			          	</div>
		            </div>
          		</div>
          		<div class="row" style="margin-bottom: 75px;">
          			<div class="col-md-12 text-center" class="user_info" style="font-size:20px ;">唯有美食与爱不可辜负</div>
        		</div>
      		</div>
        </div>
	</body>
</html>
