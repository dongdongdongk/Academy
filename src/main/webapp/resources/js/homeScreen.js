function OpenWindow(url, windowName, width, height) {
    // 새 창의 가로, 세로 크기를 설정합니다.
    let left = (screen.width - width) / 2;
    let top = (screen.height - height) / 2;
    let features = "width=" + width + ",height=" + height + ",top=" + top + ",left=" + left;
  
    // 새 창을 엽니다.
    let newWindow = window.open(url, windowName, features);
  
    // 새 창이 차단되었을 경우 경고창을 띄웁니다.
    if (!newWindow || newWindow.closed || typeof newWindow.closed == 'undefined') {
      
    }
  }


  