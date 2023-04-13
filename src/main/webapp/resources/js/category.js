$("#allList").on("click", function(){

    $.ajax({
        url: "/product/allList",
        type: "GET",
        success: function(result) {
            console.log("전체 상품보기")
            $("#productContent").html(result);
        }
    });
});

$("#bookList").on("click", function(){

    $.ajax({
        url: "/product/bookList",
        type: "GET",
        success: function(result) {
            console.log("책 상품보기")
            $("#productContent").html(result);
        }
    });
});

$("#crList").on("click", function(){

    $.ajax({
        url: "/product/crList",
        type: "GET",
        success: function(result) {
            console.log("강의 상품보기")
            $("#productContent").html(result);
        }
    });
});