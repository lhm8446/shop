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

    <title>HAMIN's ShoppingMall</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath }/assets/css/sb-admin.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="${pageContext.request.contextPath }/assets/css/plugins/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath }/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet" type="text/css">
   
    <!-- jQuery -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 	<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
 	
    <script src="${pageContext.request.contextPath }/assets/js/jquery.js"></script>
  
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath }/main">HotDog Shop</a>
            </div>
                        
            <!-- Left manu -->
			<c:import url="/WEB-INF/views/navigation/menu.jsp" />
        </nav>
        

        <div id="page-wrapper">

            <div class="container-fluid">
                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                          	  Product <small>register</small>
                        </h1>
                    </div>
                </div>

				<div class="row">
					<div class="col-lg-12">

					</div>
				</div>



			</div>
            
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="${pageContext.request.contextPath }/assets/js/plugins/morris/raphael.min.js"></script>
    <script src="${pageContext.request.contextPath }/assets/js/plugins/morris/morris.min.js"></script>
    <script src="${pageContext.request.contextPath }/assets/js/plugins/morris/morris-data.js"></script>

</body>

</html>
