Kakao.Channel.createChatButton({
    container: '#kakao-talk-channel-chat-button',
    channelPublicId: '_zRYLxj',
    size: 'large',
  });
  
  // 사이드바를 고정시키는 함수
  function fixSidebar() {
    let sidebar = document.getElementById('sidebar');
    let sidebarTop = sidebar.getBoundingClientRect().top;
    let windowHeight = window.innerHeight;
    
    if (sidebarTop < 0) {
      sidebar.style.top = '20px';
    } else if (sidebarTop + sidebar.offsetHeight > windowHeight) {
      sidebar.style.top = windowHeight - sidebar.offsetHeight - 20 + 'px';
    }
  }
  
  // 스크롤이 움직일 때마다 fixSidebar 함수 호출
  window.addEventListener('scroll', fixSidebar);