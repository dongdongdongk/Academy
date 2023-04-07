
  // $(".deleteBtn").on("click", function() {

  //   let check = window.confirm("정말 삭제 하시겠습니까?");
  
  //   if(check){
  //     let num = $(this).attr("data-producted-id");
  
  //     $.ajax({
  //       url: "/product/delete",
  //       type: "GET",
  //       data: {
  //         num: num
  //       },
  //       success: function() {
  //         alert("삭제 성공했습니다.")
  //         window.location.reload();
  //       }
  //     });
  //   } 
  // });  
  $(document).ready(function() {
    $("#minusBtn").on("click", function() {
      let num = $(this).attr("data-minus-id");
      
  
      $.ajax({
        url: "/product/productQuantity",
        type: "POST",
        data: {
          quantity: quantity
            
        },
        success: function() {
          alert("수량 감소")
        }
      });
    });
  });
  $(document).ready(function() {
    $("#addBtn").on("click", function() {
      let num = $(this).attr("data-product-id");
      let id = $(this).attr("data-member-id");
  
      $.ajax({
        url: "/product/productQuantity",
        type: "POST",
        data: {
          quantity: quantity
        },
        success: function() {
          alert("수량 증가")
        }
      });
    });
  });

//   function onCart(){
//     let productId = $("#productId").val();
//     let principalId = $("#principalId").val();
//     let amount = document.getElementById('amount_input').value;

//     if(principalId == ""){
//         alert("로그인 후 이용가능합니다.");
//         location.href="http://localhost:80/auth/login"
//     }
//     else{
//         if(amount<1){
//             alert("1개 이상 선택해야 합니다.");
//         }else{
//             let data={
//                 p: principalId,
//                 quantity : quantity
//             };

//             $.ajax({
//                 type: "post",
//                 url: `/api/cart/${productId}/${amount}`,
//                 data: JSON.stringify(data),
//                 contentType: "application/json; charset=utf-8",
//                 dataType: "json"
//             }).done(res => {
//                 alert("상품을 장바구니에 담았습니다.");
//                 location.href="http://localhost:8080/cart/"+principalId;
//             }).fail(error => {
//                 alert("실패");
//             });
//         }
//     }
// }