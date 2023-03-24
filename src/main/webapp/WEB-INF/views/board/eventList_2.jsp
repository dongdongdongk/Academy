<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<div class="row">
                    <div class="col-12">
                        <div class="breadcrumbs">
                            <ul class="flex flex-wrap align-items-center p-0 m-0">
                                <li><a href="/"><i class="fa fa-home"></i> 홈</a></li>
                                <li>종료 이벤트</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-7col-lg-8">
                        <div class="featured-courses courses-wrap" id="eventList">
                            <div class="row mx-m-25">


                                <c:forEach items="${list}" var="dto">
                                    <div class="col-3 col-md-3 px-25">
                                        <div class="course-content">
                                            <figure class="course-thumbnail">

                                                <c:set var="loop_flag" value="false" />
                                                <c:forEach items="${dto.eventFileDTOs}" var="fileDTO">
                                                    <c:if test="${not loop_flag }">
                                                        <c:if test="${not empty dto.eventFileDTOs}">
                                                            <img class="radius"
                                                                src="../resources/upload/event/${fileDTO.fileName}">
                                                            <c:set var="loop_flag" value="true" />
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>

                                            </figure><!-- .course-thumbnail -->

                                            <div class="course-content-wrap">
                                                <header class="entry-header">
                                                    <h2 class="entry-title"><a
                                                            href="./detail?num=${dto.num}">${dto.title}</a>

                                                        <c:set var="loop_flag" value="false" />
                                                        <c:forEach items="${dto.eventFileDTOs}" var="fileDTO">
                                                            <c:if test="${not loop_flag }">
                                                                <c:if test="${fileDTO.oriName ne null}"><img
                                                                        class="material-symbols-outlined"
                                                                        src="/resources/images/file_icon.gif">
                                                                    <c:set var="loop_flag" value="true" />
                                                                </c:if>
                                                            </c:if>
                                                        </c:forEach>
                                                        </td>
                                                    </h2>



                                                    <div class="entry-meta flex flex-wrap align-items-center">
                                                        <div class="course-author"><a href="#">${dto.writer} </a>
                                                        </div>
                                                        <div id="startDate" data-start-event="${dto.startDate}" class="course-date">시작일${dto.startDate}</div>
                                                        <div id="endDate" data-end-event="${dto.endDate}" class="course-date">종료일${dto.endDate}</div>
                                                        <div class="course-date">조회수${dto.hit}</div>
                                                    </div><!-- .course-date -->
                                                </header><!-- .entry-header -->


                                                <!-- <footer class="entry-footer flex flex-wrap justify-content-between align-items-center">
                                        <div class="course-cost">
                                            $45 <span class="">${dto.hit}</span>
                                        </div>

                                        <div class="course-ratings flex justify-content-end align-items-center">
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star checked"></span>
                                            <span class="fa fa-star-o"></span>

                                            <span class="course-ratings-count">${dto.hit}</span>
                                        </div>
                                    </footer> -->
                                            </div><!-- .course-content-wrap -->
                                        </div><!-- .course-content -->
                                    </div><!-- .col -->
                                </c:forEach>
                            </div><!-- .row -->
                        </div><!-- .featured-courses -->

                        <div class="row">
                            <div class="d-felx justify-content-center">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination d-felx justify-content-center">

                                        <li class="page-item ${pager.before ? 'disabled' : ''}">
                                            <a class="page-link" href="#" aria-label="Previous" data-board-page="1">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>

                                        <li class="page-item ${pager.before ? 'disabled' : ''}">
                                            <a class="page-link" href="#" aria-label="Previous"
                                                data-board-page="${pager.startNum-1}">
                                                <span aria-hidden="true">&lsaquo;</span>
                                            </a>
                                        </li>

                                        <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                                            <li class="page-item"><a class="page-link" href="#"
                                                    data-board-page="${i}">${i}</a></li>
                                        </c:forEach>

                                        <li class="page-item ${pager.after eq false ? 'disabled' : ''}">
                                            <a class="page-link" href="#" aria-label="Next"
                                                data-board-page="${pager.lastNum+1}">
                                                <span aria-hidden="true">&rsaquo;</span>
                                            </a>
                                        </li>

                                        <li class="page-item ${pager.after eq false ? 'disabled' : ''}">
                                            <a class="page-link" href="#" aria-label="Next"
                                                data-board-page="${pager.totalPage}">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div><!-- .col -->


                </div><!-- .row -->