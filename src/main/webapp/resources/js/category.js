$("#categoryNum").on("change", function() {
    let selectedValue = $(this).val();
    
    if (selectedValue === "3") {
        $.ajax({
            url: "/product/allList",
            type: "GET",
            success: function(result) {
                console.log("전체 상품보기")
                $("#productContent").html(result);
            }
          });
    } else if (selectedValue === "1") {
        $.ajax({
            url: "/product/bookList",
            type: "GET",
            success: function(result) {
                console.log("책 상품보기")
                $("#productContent").html(result);
            }
          });
    } else if (selectedValue === "2") {
        $.ajax({
            url: "/product/crList",
            type: "GET",
            success: function(result) {
                console.log("강의 상품보기")
                $("#productContent").html(result);
            }
          });
    }
});