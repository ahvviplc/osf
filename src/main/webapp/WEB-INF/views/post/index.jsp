<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="type" content="post">
	<meta name="id" content="${post.id }">
	<title>post index</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bootstrap2.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/navbar.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/card.css">
  	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/divider.css">
  	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css">
  	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/comment.css">
  	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/form.css">
  	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/button.css">
  	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/message.css">
  	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/image.css">
  	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/page.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/style.css">

  	<style>


  	</style>
  	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.js"></script>
  	<script type="text/javascript" src="<%=request.getContextPath() %>/js/basic.js"></script>
  	<script type="text/javascript" src="<%=request.getContextPath() %>/js/comment.js"></script>
  	<script type="text/javascript" src="<%=request.getContextPath() %>/js/post.js"></script>
  	<script type="text/javascript" src="<%=request.getContextPath() %>/js/follow.js"></script>
</head>
<body>
	<div class="container">
		<%@ include file="../topbar.jsp" %>
		<div class="row">
			<div class="span8">
						<div>
							<h1 class="ui dividing header">${post.post_title }</h1>
						</div>
						<div class="post" id="post${post.id }">
							<p>
								${post.post_content }
							</p>

						</div>
						<div>
							<div class="action">
								<div class="ui circular icon basic button">						
								  <i class="share alternate icon"></i>	
								</div>							
								<div class="ui circular orange icon button">
								  <i class="weibo icon" id="weiboshare"></i>
								</div>
								<div class="ui circular blue icon button">
								  <i class="qq icon" id="qqshare"></i>
								</div>
								<div class="ui circular green icon button">
								  <i class="wechat icon" id="wechatshare"></i>
								</div>	
								<div class="ui circular icon basic button post like">
								  <i class="empty red heart icon" id="like"></i>
								</div>																
							</div>
						</div>
						<div class="ui comments" id="comments">

						  <div id="replyarea">
								  <form class="ui reply form" id="replyform">
								    <div class="field">
								      <textarea id="replycontent"></textarea>
								    </div>
									<div class="ui primary button" id="replybtn">
									  评论
									</div>							    
								  </form>								
						  </div>
						  
						  <div id="commentList">
							
							  <!--  
						  	  <div class="comment" id="1" author="">
							    <a class="avatar">
							      <img src="<c:url value="/img/avatar.png"/>" alt="" />
							    </a>
							    <div class="content">
							      <a class="author">Matt</a>
							      <div class="metadata">
							        <span class="date">Today at 5:42PM</span>
							      </div>
							      <div class="text commentContent">
							        <p>How artistic!</p>
							      </div>
							      <div class="actions" >
							        <a class="reply" ref="1">Reply</a>
							      </div>
							    </div>
							  </div>	
							  -->
							  <jsp:include page="/comment/post/${post.id }"></jsp:include>				  	
						  </div>
						  <!-- comment list -->
						</div>
						<!-- end comment -->
					</div>
					<div class="span4">
					  <div id="rightside">
			            <div class="ui card">
			              <div class="image">
			                <img src="<%=request.getContextPath() %>/img/avatar.png">
			              </div>
			              <div class="content">
			                <a class="header">Stevie Feliciano</a>
			                <div class="meta">
			                  <span class="date">Joined in 2014</span>
			                </div>
			                <div class="description">
			                  Stevie Feliciano is a library scientist living in New York City. She likes to spend her time reading, running, and writing.
			                </div>
			              </div>
			              <div class="extra content">
			                <a>
			                  <i class="user icon"></i>
			                  22 Friends
			                </a>
			                <div class="small ui inverted yellow button follow" following="10">
			                	Yellow
			                </div>
			              </div>		              
			            </div> 		<!-- end card -->	
			          </div>			
					</div>
		</div>
	</div>
</body>
</html>