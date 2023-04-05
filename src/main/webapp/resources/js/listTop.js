
$(document).ready(function() {

    $(".check-item[data-num-check='1']").attr("checked", true);
    
    if ($(".check-item[data-num-check='1']").prop("checked")) {
        let row = $(".check-item[data-num-check='1']").closest("tr");
            
        row.find('.title').addClass("checkcolor");
        row.addClass("checked");
        // row.insertBefore($("tbody tr:first-child"));
        let img = '<img class="iconSize" src="/resources/images/notice.png">';
        row.find('.title').append(img);
        row.prependTo("tbody");
    }

    

    $(".check-item").on("click", function() {
       
       if ($(this).prop("checked")) {
           let row = $(this).closest("tr");
           
           row.find('.title').addClass("checkcolor");
           row.addClass("checked");
           // row.insertBefore($("tbody tr:first-child"));
           let img = '<img class="iconSize" src="/resources/images/notice.png">';
           row.find('.title').append(img);
           // let num = $(".noticeNum").attr("data-num-id"); 
           // $.ajax({
           //     type: "POST",
           //     url: "/notice/checked", 
           //     data: {
           //         num: num, 
           //         checked: 1
           //     }, // ID와 체크된 값 서버로 전송
               
           //     success: function() {
           //         console.log("체크o")
           //         alert("공지고정")
           //     }
           // });



           row.prependTo("tbody");
           
       } else if($(this).prop("!checked")) {
           $(this).closest("tr").removeClass("checked");
           $(this).closest("tr").find('.title').removeClass("checkcolor");
           $(this).closest("tr").find('.iconSize').remove();

           // let num = $(".noticeNum").attr("data-num-id");
           // $.ajax({
           //     type: "POST",
           //     url: "/notice/checked", 
           //     data: {
           //         num: num, 
           //         checked: 0
           //     }, // ID와 체크된 값 서버로 전송
           //     success: function() {
           //         console.log("체크x")
           //         alert("공지고정 취소")
           //     }
           // });


       }
   });
    
    
    $(".check-item").change(function() {
        
        let num = $(".noticeNum").attr("data-num-id"); 
        if ($(this).prop("checked")) {
            $.ajax({
                type: "POST",
                url: "/notice/checked", 
                data: {
                    num: num, 
                    checked: 1
                }, // ID와 체크된 값 서버로 전송
                
                success: function() {
                    console.log("체크o")
                    alert("공지고정")   
                }
            });
            
        } else {
            $.ajax({
                type: "POST",
                url: "/notice/checked", 
                data: {
                    num: num, 
                    checked: 0
                }, // ID와 체크된 값 서버로 전송
                success: function() {
                    console.log("체크x")
                    alert("공지고정 취소")
                }
            });


        }
    });
   
   











});

