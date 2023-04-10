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

const quantityEls = document.querySelectorAll('[id^="quantity"]');
const priceEls = document.querySelectorAll('.price');

function updatePrices(e) {
  // 수량 체크
  const quantity = parseInt(e.target.value);

  const row = e.target.closest('tr');
  const priceEl = row.querySelector('.price');

  const price = parseInt(priceEl.querySelector('.val').textContent.replace(',', ''));
  const total = price * quantity;
  priceEl.querySelector('.val').textContent = total.toLocaleString();
}

quantityEls.forEach((quantityEl) => {
  quantityEl.addEventListener('change', updatePrices);
  quantityEl.addEventListener('keyup', updatePrices);
});

// + Button
$(".btnP").on('click', function() {
    let cartNum = $(this).attr("data-cart-id");
    let quantityDisplay = $("#quantity" + cartNum);
    let quantity = Number(quantityDisplay.text());

    // AJAX request
    $.ajax({
        type: 'POST',
        url: '/cart/cartUpdate',
        data: {
            quantity: quantity + 1,
            cartNum: cartNum
        },
        success: function() {
            console.log('수량이 추가되었습니다.');
            window.location.reload();
        },
        error: function() {
            console.log('실패하였습니다.');
        }
    });
});

// - Button
$(".btnN").on('click', function() {
    let cartNum = $(this).attr("data-cart-id");
    let quantityDisplay = $("#quantity" + cartNum);
    let quantity = Number(quantityDisplay.text());

    if (quantity <= 1) {
        quantityDisplay.text(1);
    } else {
        $.ajax({
            type: 'POST',
            url: '/cart/cartUpdate',
            data: {
                quantity: quantity - 1,
                cartNum: cartNum
            },
            success: function() {
                console.log('수량이 삭제되었습니다.');
                window.location.reload();
            },
            error: function() {
                console.log('실패하였습니다.');
            }
        });
    }
});

function formatPrice(price) {
    return price.toLocaleString('ko-KR');
}

document.addEventListener('DOMContentLoaded', function() {
    // Format individual prices
    const priceElements = document.querySelectorAll('td.price');
    for (let i = 0; i < priceElements.length; i++) {
        const price = parseInt(priceElements[i].textContent.trim(), 10);
        priceElements[i].textContent = formatPrice(price) + ' 원';
    }

    var totalPriceElement = document.getElementById('total-price');
    var currentPrice = totalPriceElement.textContent.replace(' 원', '');
    var formattedPrice = formatPrice(parseInt(currentPrice));
    totalPriceElement.textContent = formattedPrice + ' 원';
});