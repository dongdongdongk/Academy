$(document).ready(function() {
  $("#addToCartBtn").on("click", function() {
    let num = $(this).attr("data-product-id");
    let id = $(this).attr("data-member-id");

    $.ajax({
      url: "/cart/cartAdd",
      type: "POST",
      data: {
          num: num,
          id : id
      },
      success: function() {
        alert("장바구니에 추가되었습니다")
      }
    });
  });
});

