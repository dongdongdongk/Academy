<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />


 <!-- 현재날짜 -->
 <c:set var="now" value="<%=new java.util.Date()%>" />
 <c:set var="today"><fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /></c:set> 

 <c:out value="${today}" />


<div class="featured-courses courses-wrap" id="eventResult">
    <h2> 진행중 </h2>
    <div class="row mx-m-25">
      
        <c:forEach items="${list}" var="dto">
            <c:if test="${today > dto.startDate && today < dto.endDate}">
                <div class="col-3 col-md-3 px-25">
                    <div class="course-content">
                        <figure class="course-thumbnail">
                            <c:set var="loop_flag" value="false" />
                            <c:forEach items="${dto.eventFileDTOs}" var="fileDTO">
                                <c:if test="${not loop_flag }">
                                    <c:if test="${not empty dto.eventFileDTOs}">
                                        <a href="./detail?num=${dto.num}"><img class="radius thumbnail"
                                            src="../resources/upload/event/${fileDTO.fileName}"></a>
                                        <c:set var="loop_flag" value="true" />
                                    </c:if>
                                </c:if>
                            </c:forEach>

                        </figure>

                        <div class="course-content-wrap">
                            <header class="entry-header">
                                <h2 class="entry-title ellipsis">
                                    
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
                                <a href="./detail?num=${dto.num}">${dto.title}</a>
                                    
                                </h2>



                                <div class="entry-meta flex flex-wrap align-items-center">
                                    <div class="course-author"><a href="#">${dto.writer} </a>
                                    </div>
                                    <div id="startDate" data-start-event="${dto.startDate}" class="course-date">시작일${dto.startDate}</div>
                                    <div id="endDate" data-end-event="${dto.endDate}" class="course-date">종료일${dto.endDate}</div>
                                    <div class="course-date">조회수${dto.hit}</div>
                                </div>
                            </header>
                        </div>
                    </div>
                </div>
            </c:if>
        </c:forEach>
    </div>
</div>