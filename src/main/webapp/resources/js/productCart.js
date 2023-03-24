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


$(".deleteBtn").on("click", function() {
  let cartNum = $(this).attr("data-cart-id");

    $.ajax({
      url: "/cart/cartDelete",
      type: "POST",
      data: {
        cartNum: cartNum,
      },
      success: function() {
        alert("장바구니에서 삭제 되었습니다");
        window.location.reload();
      }
    });
});  

$(document).ready(function() {
  $("#addToCartBtn").on("click", function() {
    let id = $(this).attr("data-member-id");

    $.ajax({
      url: "/cart/cartList",
      type: "GET",
      data: {
          id : id
      },
      success: function() {
        console.log("memberId")
      }
    });
  });
});

