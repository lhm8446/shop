<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                
                    <li>
                        <a href="${pageContext.request.contextPath }/main"><i class="fa fa-fw fa-bar-chart-o"></i> 쇼핑몰 현황</a>
                    </li>
                    
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#basic"><i class="fa fa-fw fa-gear"></i> 환경설정 <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="basic" class="collapse">
                            <li>
                                <a href="#">기본환경설정</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath }/setting/menu">메뉴설정</a>
                            </li>
                            <li>
                                <a href="#">부가서비스</a>
                            </li>
                        </ul>
                    </li>
                    
                   <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#product"><i class="fa fa-fw fa-table"></i> 상품관리 <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="product" class="collapse">
                            <li>
                                <a href="${pageContext.request.contextPath }/product/product-admin">상품등록</a>
                            </li>
                            <li>
                                <a href="#">상품재고관리</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#order"><i class="fa fa-fw fa-file"></i> 주문관리 <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="order" class="collapse">
                            <li>
                                <a href="#">주문내역</a>
                            </li>
                            <li>
                                <a href="#">발송현황</a>
                            </li>
                            <li>
                                <a href="#">판매순위</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#member"><i class="fa fa-fw fa-user"></i> 회원관리 <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="member" class="collapse">
                            <li>
                                <a href="#">전체회원조회</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#board"><i class="fa fa-fw fa-edit"></i> 게시판관리 <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="board" class="collapse">
                            <li>
                                <a href="#">게시판관리</a>
                            </li>
                            <li>
                                <a href="#">1:1 문의 관리</a>
                            </li>
                        </ul>
                    </li>
                 
                    
                    <li>
                        <a href="bootstrap-elements.html"><i class="fa fa-fw fa-desktop"></i> <i class="fa fa-fw fa-wrench"></i> <i class="fa fa-fw fa-arrows-v"></i> <i class="fa fa-fw fa-dashboard"></i></a>
                    </li>

                </ul>
            </div>