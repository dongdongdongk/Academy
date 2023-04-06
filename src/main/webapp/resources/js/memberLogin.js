$("#memberLogin").on("click", function() {
  let id = $(this).attr("data-member-id");


  $.ajax({
    url: "/member/memberLogin",
    type: "POST",
    data: {
      id: id,
      
    },

    success: function(result) {
    
      if (result.success) { // 로그인 성공 여부 판단
        alert("로그인 성공했습니다.")
      } else {
        alert("로그인 실패했습니다.");
      }
    }
  });
});