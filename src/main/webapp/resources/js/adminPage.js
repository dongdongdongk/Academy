// admin sideBar
function openCity(evt, cityName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the link that opened the tab
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// 관리자 회원 리스트 불러오기
$("#memberList").on("click", function(){

    $.ajax({
        url: "/member/memberList",
        type: "GET",
        success: function(result) {
            // $(".lists").append(result);
            $(".lists").html(result);
          }
    })
})

// 관리자 상품 리스트 불러오기
$("#productList").on("click", function(){

    $.ajax({
        url: "/member/productList",
        type: "GET",
        success: function(result) {
            // $(".lists").append(result);
            $(".lists").html(result);
          }
    })
})

// 관리자 수강후기 불러오기
$("#crList").on("click", function(){

    $.ajax({
        url: "/member/crList",
        type: "GET",
        success: function(result) {
            // $(".lists").append(result);
            $(".lists").html(result);
          }
    })
})


