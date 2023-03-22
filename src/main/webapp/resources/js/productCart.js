var productId = $("#productId").val();
var userid = $("#login_userid").val();

$("#btn-cart").click(function() {
			
    $.ajax({
        
        type : "post",
        url : "/order/cart/" + productId,
        data : {
            productId : productId
        },
        dataType : "text",
        success : function(result) {
            
            if (result.trim() == 'add_success') {
                var check = confirm("카트에 등록되었습니다.");
                if (check) {
                    location.assign("/order/mycart/" + userid);
                }
            } else if (result.trim() == 'already_existed') {
                alert("이미 카트에 등록된 상품입니다.");
            }
        }
    });
});
