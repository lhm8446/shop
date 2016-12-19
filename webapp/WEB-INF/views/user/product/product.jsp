<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>Shop Homepage - Start Bootstrap Template</title>
    
    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath }/assets/css/shop-homepage.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="${pageContext.request.contextPath }/assets/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>
    
    <script src="${pageContext.request.contextPath }/assets/css/style.css"></script>
    
</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
           <div class="navbar-header">
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath }/">HotDog Shop</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
				<c:import url="/WEB-INF/views/user/include/topmenu.jsp" />
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">            
				<c:import url="/WEB-INF/views/user/include/menu.jsp" />
            </div>

            <div class="col-md-9">

                <div class="row">

					<c:forEach items="${plist }" var="plist" varStatus="status">
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                        
                            <img src="${pageContext.request.contextPath}/gallery/assets/${plist.main_photo }" alt="">
                            
                            <div class="caption">
                            
                                <h4 class="pull-right">${plist.price } won</h4>
                                <h4><a href="#">${plist.name } </a>
                                </h4>
                                
                                <p>${plist.main_des } </p>
                            </div>
                            
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>
					</c:forEach>
                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->



</body>

</html>
