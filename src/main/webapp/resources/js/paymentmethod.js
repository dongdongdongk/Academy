document.querySelectorAll('.update-btn').forEach(function (btn) {
    btn.addEventListener('click', function () {
        const paymentMethodItem = btn.closest('.card');
        paymentMethodItem.querySelectorAll('.info').forEach(function (div) {
            div.contentEditable = "true";
        });
        btn.style.display = "none";
        paymentMethodItem.querySelector('.save-btn').style.display = "inline-block";
    });
});
	
document.querySelectorAll('.delete-btn').forEach(function (btn) {
    btn.addEventListener('click', function () {
        const paymentMethodItem = btn.closest('.card');
        const id = paymentMethodItem.querySelector('input[name="id"]').value;
        window.location.href = "paymentmethoddelete?id=" + id;
    });
});
	
document.querySelectorAll('.save-btn').forEach(function (btn) {
    btn.addEventListener('click', function () {
        const paymentMethodItem = btn.closest('.card');
        const paymentMethod = paymentMethodItem.querySelector('.payment-method').textContent;
        const info = paymentMethodItem.querySelector('.info').textContent;
        const paymentMethodInput = paymentMethodItem.querySelector('input[name="paymentMethod"]');
        const infoInput = paymentMethodItem.querySelector('input[name="info"]');
	
        paymentMethodInput.value = paymentMethod;
        infoInput.value = info;
	
        paymentMethodItem.querySelectorAll('.payment-method, .info').forEach(function (div) {
            div.contentEditable = "false";
        });
        btn.style.display = "none";
        paymentMethodItem.querySelector('.update-btn').style.display = "inline-block";
    });
});