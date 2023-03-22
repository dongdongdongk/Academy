$(document).ready(function() {
    $("#addToCartBtn").on("click", function() {
      var productId = $(this).data("product-id");
      $.ajax({
        url: "/cart/cartAdd",
        type: "POST",
        data: {
            productId: productId,
            id : id
        },
        success: function(data) {
          alert("장바구니에 추가되었습니다")
        }
      });
    });
  });

//   function updateCart(cartItems) {
//     var cartCount = $("#cartCount");
//     var cartTableBody = $("#cartTableBody");
//     cartCount.text(cartItems.length);
//     cartTableBody.empty();
//     $.each(cartItems, function(index, cartItem) {
//       var row = $("<tr>");
//       var nameCell = $("<td>").text(cartItem.product.name);
//       var quantityCell = $("<td>").text(cartItem.quantity);
//       row.append(nameCell);
//       row.append(quantityCell);
//       cartTableBody.append(row);
//     });
//   }