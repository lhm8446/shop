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
    

<script type="text/javascript">
var count = 1;
var render = function(vo){
	
	var htmls = 
	"<tr id='del-"+vo.no+"'>"+
	"<td id='num'>"+count+"</td>"+
	"<td><input type='text' id='no-"+vo.no+"' value='"+vo.title+"' size='50px'/></td>"+
	"<td><button type='button' class='btn btn-primary' id='btn-up' data-uno='"+vo.no+"'>Edit</button></td>"+
	"<td><button type='button' class='btn btn-danger'  id='btn-de' data-no='"+vo.no+"'>Delete</button></td>"+
	"</tr>";
	
	count++;
	$("#newcategory").append(htmls);
}

var fetchList = function(){
	
	$.ajax({
		url : "${pageContext.request.contextPath }/api/getcategory",
		type : "get",
		dataType : "json",
		success : function(response){
			
			if(response.result != "success"){
				console.error(response.message);
				return;
			}
			
			//redering
			$(response.data).each(function(index, vo){
				
				render(vo);

			})
		},
		error : function(jqXHR, status, e) {
			console.log(status + ":" + e);
		}
	});
}

$(function() {
		
	fetchList();
	
	$("#addcategory").submit(function(event){
		
		event.preventDefault();
		
		$.ajax({
			url:"${pageContext.request.contextPath }/api/addcategory",
			type:"post",
			data:"title="+ $("#title").val(),
			success : function(response){
				if(response.result != "success"){
					console.error(response.message);
					return;
				}
				render(response.data);
				$("#title").val("");
			},
			error : function(jqXHR, status, e) {
				console.log(status + ":" + e);
			}
		});
	});
	

	$(document).on("click", "#btn-up", function(event){
		
		var no2 = $(this).data("uno");
		
		var ti = $("#no-"+no2).val();
						
		$.ajax({
			url:"${pageContext.request.contextPath }/api/editcategory",
			type:"post",
			dataType:"json",
			data: "no="+no2+
				  "&title="+ti,
			success : function(response){
				
				if(response.result == true){
					alert("success!!!!!!!!!!");
				}
				else{
					alert("fail!!!!!!!!!")
				}
			},
			error : function(jqXHR, status, e) {
				console.log(status + ":" + e);
			}
		});
	});
	
	$(document).on("click", "#btn-de", function(event){
		
		var no = $(this).data("no");
		
	    var dialog = $( "#dialog-confirm" ).dialog({
		      resizable: false,
		      height: "auto",
		      width: 400,
		      modal: true,
		      buttons: {
		
		        "삭제": function() {
		        	$.ajax({
		      			url : "${pageContext.request.contextPath }/api/delcategory",
		        		type : "post",
		        		dataType : "json",
		        		data : "no="+ no,
						success : function(response) {
							
							if(response.result==true){
								
							$("#del-"+no).remove();	
							
							dialog.dialog( "close" );
							
							}
						},
						error : function(jqXHR, status, e) {
							console.log(status + ":" + e);
						}
		        	})
		        },
		        "취소": function() {
		          dialog.dialog( "close" );
		        }
		      }
		    });
	});
});
</script>

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
			<c:import url="/WEB-INF/views/admin/include/menu.jsp" />
        </nav>
        

        <div id="page-wrapper">

            <div class="container-fluid">
                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                          	  Menu <small>setting</small>
                        </h1>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-lg-8">
                    		<table class="table table-bordered">
                
                    			<tr>
                    			<td id="num"> </td>
                    			<td><strong>카테고리 </strong></td>
                    			<td><strong>수정</strong></td>
                    			<td><strong>삭제</strong></td>
                    			</tr>
                    			
                    			<tbody id="newcategory"></tbody>
                    			
                    		</table>
                    </div>
                    
                    <div class="col-lg-6">
                    	<p>카테고리 추가</p>
                    	<form id="addcategory">
                    		<input id="title" type="text" size="60px" value="">
                    		<input id="categoryAdd" type="submit" value="추가">
                    	</form>
                    	
                    	
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

	<div id="dialog-confirm" title="삭제 하시겠습니까?">
	</div>
</body>

</html>
