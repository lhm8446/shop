<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
            <p class="lead">Store Menu</p>
    
                <div class="list-group">
                	<c:forEach items="${list }" var="list" varStatus="status">
                	    <a href="${pageContext.request.contextPath }/${list.no }" class="list-group-item">${list.title }</a>
                	</c:forEach>
                </div>