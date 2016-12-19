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
    
    <!-- SmartEdit -->
	<script type="text/javascript" src="${pageContext.request.contextPath }/SE/js/HuskyEZCreator.js" charset="utf-8"></script>

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
                          	  Product <small>register</small>
                        </h1>
                    </div>
                </div>

				<div class="row">
					<div class="col-lg-12">
						<form action="${pageContext.request.contextPath }/product/submit" method="post" enctype="multipart/form-data">
							<table class="table table-bordered">
								<tr>
									<td>카테고리 지정</td>
									<td>
										<select name="category_no" style=width:100px>
											<option>선택</option>
											<c:forEach items="${list }" var="list" varStatus="status">
											<option value="${list.no }">${list.title }</option>
											</c:forEach>
										</select>
									</td>
								</tr>
							
								<tr>
									<td>상품 이름</td>
									<td><input type="text" name="name" size="100px"/></td>
								</tr>
								
								<tr>
									<td>가격</td>
									<td><input type="text" name="price" size="100px"/></td>
								</tr>

								<tr>
									<td>메인 설명</td>
									<td><input type="text" name="main_des" size="100px"/></td>
								</tr>

								<tr>
									<td>메인사진</td>
									<td><input type="file" name="photo1" size="100px"/>
									</td>
								</tr>

								<tr>
									<td>부가 설명</td>
									<td><textarea name="sub_des" id="ir1" rows="10" cols="100"
											style="width: 766px; height: 412px; display: none;"></textarea>
										<!--textarea name="ir1" id="ir1" rows="10" cols="100" style="width:100%; height:412px; min-width:610px; display:none;"></textarea-->
										<script type="text/javascript">
											var oEditors = [];

											// 추가 글꼴 목록
											//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];

											nhn.husky.EZCreator
													.createInIFrame({
														oAppRef : oEditors,
														elPlaceHolder : "ir1",
														sSkinURI : "${pageContext.request.contextPath }/SE/SmartEditor2Skin.html",
														htParams : {
															bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
															bUseVerticalResizer : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
															bUseModeChanger : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
															//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
															fOnBeforeUnload : function() {
																//alert("완료!");
															}
														}, //boolean
														fOnAppLoad : function() {
															//예제 코드
															//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
														},
														fCreator : "createSEditor2"
													});

											function pasteHTML() {
												var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
												oEditors.getById["ir1"]
														.exec("PASTE_HTML",
																[ sHTML ]);
											}

											function showHTML() {
												var sHTML = oEditors.getById["ir1"].getIR();
												alert(sHTML);
											}

											function submitContents(
													elClickedObj) {
												oEditors.getById["ir1"]
														.exec(
																"UPDATE_CONTENTS_FIELD",
																[]); // 에디터의 내용이 textarea에 적용됩니다.

												// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.

												try {
													elClickedObj.form.submit();
												} catch (e) {
												}
											}

											function setDefaultFont() {
												var sDefaultFont = '궁서';
												var nFontSize = 24;
												oEditors.getById["ir1"]
														.setDefaultFont(
																sDefaultFont,
																nFontSize);
											}
										</script></td>
								</tr>
								
								<tr>
									<td>추가 사진</td>
									<td><input type="file" name="photo2" size="100px"/>
									</td>
								</tr>
							</table>
							
							<input type="submit" id="submit" value="등록" onclick="submitContents(this)">

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

</body>

</html>
