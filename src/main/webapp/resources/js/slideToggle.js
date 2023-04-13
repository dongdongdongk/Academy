$(document).ready(function() {    
let accordion_tab = $('.accordion p'), accordion_content = $('.accordion div');
    //accordion p tag click
    accordion_tab.on('click', function(e){
      //tab link 비활성화
      e.preventDefault();
      //활성화 된 class 제거
      accordion_tab.removeClass('active');
      //accordion div 내용 숨기기
      accordion_content.slideUp('normal');
      //tab이 숨겨져 있으면 활성화 시키고 div 내용 펼치기
      if($(this).next().is(':hidden') == true) {
        $(this).addClass('active');
        $(this).next().slideDown('normal');
       } 			  
   });
  });