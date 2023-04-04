
$(document).ready(function() {

    $(".check-item").on("click", function() {
        
        if ($(this).prop("checked")) {
            let row = $(this).closest("tr");
            
            row.find('.title').addClass("checkcolor");
            row.addClass("checked");
            row.insertBefore($("tbody tr:first-child"));
            let img = '<img class="iconSize" src="/resources/images/notice.png">';
            row.find('.title').append(img);

            let num = $(".noticeNum").attr("data-num-id"); 

            $.ajax({
                type: "POST",
                url: "/notice/checked", // 서버 측 스크립트의 URL로 교체
                data: {
                    num: num, 
                    checked: 1
                }, // ID와 체크된 값 서버로 전송
                success: function() {
                    console.log("체크 성공")
                    // alert("공지고정")
                }
            });
            
        } else {
            $(this).closest("tr").removeClass("checked");
            $(this).closest("tr").find('.title').removeClass("checkcolor");
            $(this).closest("tr").find('.iconSize').remove();
        }
    });

});

