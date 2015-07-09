<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lvwang.osf.model.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="header">
	评论
</div>
<div class="ui divider"></div>
<c:forEach items="${comments }" var="comment">
	<div class="comment" id="comment${comment.id }" author="${comment.comment_author }">
	  <a class="avatar">
	  	<img src="<c:url value="${comment.comment_author_avatar }"/>" alt="" />
	  </a>
	  <div class="content">
	  	<c:if test="${comment.comment_parent == 0 }">
	    	<a class="author">${comment.comment_author_name }</a>
	    </c:if>
	    <c:if test="${comment.comment_parent != 0 }">
	    	<a class="author">${comment.comment_author_name }</a> 回复 <a class="author">${comment.comment_parent_author_name }</a>
	    </c:if>
	    <div class="metadata">
	      <span class="date">${comment.comment_ts }</span>
	    </div>
	    <div class="text commentContent">
	      <p>${comment.comment_content }</p>
	    </div>
	    <c:if test="${!empty sessionScope.user }">
	    	<c:if test="${comment.comment_author ne sessionScope.user.id }">
			    <div class="actions" >
			      <a class="reply" ref="${comment.id }">回复</a>
			    </div>	    		
	    	</c:if>
	    </c:if>
	    <c:if test="${empty sessionScope.user }">
		    <div class="actions" >
		      <a class="reply" ref="${comment.id }">Reply</a>
		    </div>
	    </c:if>
	  </div>
	</div>
</c:forEach>