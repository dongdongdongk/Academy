$(document).ready(function() {
    // "책" 또는 "강의" 카테고리를 선택할 때마다 발생하는 이벤트 처리
    $("#name").on("change", function() {
      let categoryId = $(this).val();
      let url = "/get-category-list/" + categoryId;  // AJAX 호출할 URL 설정
      
      $.ajax({
        url: url,
        type: "GET",
        success: function(response) {
          // 서버로부터 받은 데이터를 이용하여 카테고리 리스트 동적으로 생성
          let itemList = response.itemList;
          let html = "<ul>";
          for (var i = 0; i < itemList.length; i++) {
            html += "<li>" + itemList[i] + "</li>";
          }
          html += "</ul>";
          $("#itemList").html(html);
        },
        error: function(xhr) {
          console.log("Error:", xhr.responseText);
        }
      });
    });
  });