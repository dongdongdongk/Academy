$(document).ready(function() {
  $("#addToCartBtn").on("click", function() {
    let num = $(this).attr("data-product-id");
    let id = $(this).attr("data-member-id");
    
    $.ajax({
      url: "/cart/cartCheck",
      type: "POST",
      data: {
          num: num,
          id: id
      },
      success: function(result) {
        if (result == 0) {
          $.ajax({
            url: "/cart/cartAdd",
            type: "POST",
            data: {
                num: num,
                id : id
            },
            success: function() {
                alert("장바구니에 추가되었습니다.")
            }
          });
        } else {
          alert("이미 장바구니에 추가된 상품입니다.");
        }
      }
    });
  });
});

$(".deleteBtn").on("click", function() {

  let check = window.confirm("정말 삭제 하시겠습니까?");

  if(check){
    let cartNum = $(this).attr("data-cart-id");

    $.ajax({
      url: "/cart/cartDelete",
      type: "POST",
      data: {
        cartNum: cartNum
      },
      success: function() {
        alert("삭제 성공했습니다.")
        window.location.reload();
      }
    });
  } 
});  