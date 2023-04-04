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

// input 엘리먼트와 가격을 표시하는 td 엘리먼트를 선택합니다.
const prdNumEl = document.getElementById('prdNum10');
const priceEls = document.querySelectorAll('.price');

// input 엘리먼트의 값이 변경될 때마다 실행되는 함수를 정의합니다.
function updatePrices() {
  // 수량을 가져옵니다.
  const quantity = parseInt(prdNumEl.value);

  // 각각의 가격을 곱해서 총 가격을 계산합니다.
  priceEls.forEach((priceEl) => {
    const price = parseInt(priceEl.querySelector('.val').textContent.replace(',', ''));
    const total = price * quantity;
    priceEl.querySelector('.val').textContent = total.toLocaleString();
  });
}

// input 엘리먼트에 이벤트 리스너를 등록합니다.
prdNumEl.addEventListener('change', updatePrices);
prdNumEl.addEventListener('keyup', updatePrices);



$(".btnP").on('click', function() {
  let cartNum = $(this).attr("data-cart-id") // 장바구니 상품 ID
  let quantity = Number($("#quantity" + cartNum).attr("value")) // 변경된 수량
  
  // AJAX 요청
  $.ajax({
    type: 'POST', // 업데이트 요청이므로 PUT 메서드 사용
    url: '/cart/cartUpdate', // 업데이트할 장바구니 상품 ID를 URL에 포함
    data: { 
      quantity: quantity + 1,
      cartNum: cartNum
    }, // 변경된 수량을 데이터로 전송
    success: function() {
      console.log('수량 업데이트 성공'); // 업데이트 성공 시 콘솔에 로그 출력
      window.location.reload();
    },
    error: function() {
      console.log('수량 업데이트 실패'); // 업데이트 실패 시 콘솔에 로그 출력
    }
  });
});

$(".btnN").on('click', function() {
  let cartNum = $(this).attr("data-cart-id") // 장바구니 상품 ID
  let quantity = Number($("#quantity" + cartNum).attr("value")) // 변경된 수량
  
  // AJAX 요청
  $.ajax({
    type: 'POST', // 업데이트 요청이므로 PUT 메서드 사용
    url: '/cart/cartUpdate', // 업데이트할 장바구니 상품 ID를 URL에 포함
    data: { 
      quantity: quantity - 1,
      cartNum: cartNum
    }, // 변경된 수량을 데이터로 전송
    success: function() {
      console.log('수량 업데이트 성공'); // 업데이트 성공 시 콘솔에 로그 출력
      window.location.reload();
    },
    error: function() {
      console.log('수량 업데이트 실패'); // 업데이트 실패 시 콘솔에 로그 출력
    }
  });
});











const prdNum10 = document.getElementById("prdNum10");

prdNum10.addEventListener("change", function() {
  if (prdNum10.value < 1) {
    prdNum10.value = 1;
  }
});

prdNum10.addEventListener("keydown", function(e) {
  if (e.key === "ArrowDown" && prdNum10.value <= 1) {
    e.preventDefault();
    prdNum10.value = 1;
  }
});
  
  