function addToCart(productId, memberId) {
    let cart = localStorage.getItem('cart');
    let cartObj = cart ? JSON.parse(cart) : {};
    
    if (cartObj[memberId] && cartObj[memberId][productId]) {
      alert('이미 장바구니에 해당 상품이 존재합니다.');
      return;
    }
    
    cartObj[memberId] = cartObj[memberId] || {};
    cartObj[memberId][productId] = 1;
    
    localStorage.setItem('cart', JSON.stringify(cartObj));
    alert('장바구니에 상품이 추가되었습니다.');
  }