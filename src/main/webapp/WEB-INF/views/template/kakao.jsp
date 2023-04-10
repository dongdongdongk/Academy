<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/kakao.css">
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.1.0/kakao.min.js"
  integrity="sha384-dpu02ieKC6NUeKFoGMOKz6102CLEWi9+5RQjWSV0ikYSFFd8M3Wp2reIcquJOemx" crossorigin="anonymous"></script>
<script>
  Kakao.init('41d534ae5dc3fb8670ff2f84bd5cf770'); // 사용하려는 앱의 JavaScript 키 입력
</script>
</head>
<body>
       <div id="sidebar">
          <div id="kakao-talk-channel-chat-button"></div>
          <div id="add-channel-button"></div>
        </div>
    
            <div class="d-flex align-items-center">
                <div id="add-channel-button"></div>
        
                <div id="kakao-talk-channel-chat-button"></div>
            </div>
        
        <script>
            Kakao.Channel.createAddChannelButton({
              container: '#add-channel-button',
              channelPublicId: '_zRYLxj',
            });

            Kakao.Channel.createChatButton({
              container: '#kakao-talk-channel-chat-button',
             channelPublicId: '_zRYLxj'
            });
        
        </script>
        <script src="/resources/js/kakao.js"></script>
</body>
</html>